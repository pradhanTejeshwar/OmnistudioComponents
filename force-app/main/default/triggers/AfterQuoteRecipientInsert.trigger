trigger AfterQuoteRecipientInsert on QuoteLineItemRecipient (before insert) {
    if(Trigger.isBefore && Trigger.isInsert) {
        QuoteRecipientHelper.performBeforeInsertLogic(Trigger.new);
    }
}