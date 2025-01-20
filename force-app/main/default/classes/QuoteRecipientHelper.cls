public class QuoteRecipientHelper {
    public static void performBeforeInsertLogic(List<QuoteLineItemRecipient> newQuoteRecipients) {
        for (QuoteLineItemRecipient obj : newQuoteRecipients) {
            obj.MaxDownloadSpeed = '500 Mpbs';
            obj.MaxUploadSpeed = '250 Mbps';
            obj.BroadbandConnectionType = 'Fiber';
        }
    }
}