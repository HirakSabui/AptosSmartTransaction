module 0x710a17549a738350806e597866f7a28ef0c722eaf09520c873cdc6e97a6e009c::TeacherRating {
    use aptos_framework::account;
    use aptos_framework::signer;
    use std::vector;

    /// Error codes
    const E_ALREADY_RATED: u64 = 1;
    const E_RATING_CLOSED: u64 = 2;

    /// Structure to store teacher rating and feedback information
    struct RatingLedger has key {
        teacher: address,
        ratings: vector<u8>,
        feedbacks: vector<vector<u8>>,
        raters: vector<address>,
        is_active: bool
    }

    /// Creates a new rating ledger for a teacher
    public entry fun create_ledger(
        creator: &signer,
        teacher: address
    ) {
        let creator_addr = signer::address_of(creator);

        let ledger = RatingLedger {
            teacher,
            ratings: vector::empty<u8>(),
            feedbacks: vector::empty<vector<u8>>(),
            raters: vector::empty<address>(),
            is_active: true
        };

        move_to(creator, ledger);
    }

    /// Submit a rating and feedback for a teacher
    public entry fun rate(
        rater: &signer,
        teacher: address,
        rating: u8,
        feedback: vector<u8>
    ) acquires RatingLedger {
        let ledger = borrow_global_mut<RatingLedger>(teacher);
        let rater_addr = signer::address_of(rater);

        // Check if rating is still active
        assert!(ledger.is_active, E_RATING_CLOSED);

        // Check if rater has already rated
        let i = 0;
        let raters_len = vector::length(&ledger.raters);
        while (i < raters_len) {
            assert!(vector::borrow(&ledger.raters, i) != &rater_addr, E_ALREADY_RATED);
            i = i + 1;
        };

        // Record the rating and feedback
        vector::push_back(&mut ledger.ratings, rating);
        vector::push_back(&mut ledger.feedbacks, feedback);
        vector::push_back(&mut ledger.raters, rater_addr);
    }

    /// Close the rating ledger
    public entry fun close_ledger(
        creator: &signer,
        teacher: address
    ) acquires RatingLedger {
        let ledger = borrow_global_mut<RatingLedger>(teacher);
        let creator_addr = signer::address_of(creator);

        // Only the creator can close the ledger
        assert!(ledger.teacher == creator_addr, E_RATING_CLOSED);

        ledger.is_active = false;
    }
}