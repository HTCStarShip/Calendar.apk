.class public Lcom/htc/calendar/widget/ComposeTitle;
.super Landroid/widget/LinearLayout;
.source "ComposeTitle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/widget/ComposeTitle$QueryHandler;,
        Lcom/htc/calendar/widget/ComposeTitle$ComposeTextWatcher;,
        Lcom/htc/calendar/widget/ComposeTitle$DataHandler;,
        Lcom/htc/calendar/widget/ComposeTitle$ContactObj;,
        Lcom/htc/calendar/widget/ComposeTitle$OnComposeFocusChangeListener;,
        Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;,
        Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;,
        Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;,
        Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;,
        Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;,
        Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;,
        Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EMAIL_HISTORY_FOR_MERGE_URI:Landroid/net/Uri; = null

.field public static final EMAIL_HISTORY_URI:Landroid/net/Uri; = null

.field private static final FACEBOOK_PROJECT:[Ljava/lang/String; = null

.field public static final FACEBOOK_URI:Landroid/net/Uri; = null

.field private static final FB_INDEX_CONTACT_ID:I = 0x3

.field private static final FB_INDEX_DISPLAY_NAME:I = 0x1

.field private static final FB_INDEX_RAW_CONTACT_ID:I = 0x0

.field private static final FB_INDEX_SOURCE_ID:I = 0x2

.field public static final FILTER_EMAIL_ADDRESS_URI:Landroid/net/Uri; = null

.field public static final FILTER_FACEBOOK_URI:Landroid/net/Uri; = null

.field private static final INPUT_FIELD_BCC:I = 0x3

.field private static final INPUT_FIELD_CC:I = 0x2

.field private static final INPUT_FIELD_TO:I = 0x1

.field private static final MAIL_INDEX_CONTACT_ID:I = 0x4

.field private static final MAIL_INDEX_DATA:I = 0x1

.field private static final MAIL_INDEX_DISPLAY_NAME:I = 0x0

.field private static final MAIL_INDEX_ID:I = 0x2

.field private static final MAIL_INDEX_LABEL:I = 0x5

.field private static final MAIL_INDEX_ROW_CONTACT_ID:I = 0x6

.field private static final MAIL_INDEX_TYPE:I = 0x3

.field private static final MAIL_PROJECTION:[Ljava/lang/String; = null

.field private static final MARGIN:I = 0x7

.field private static final MESSAGE_UPDATE_CONTACT_INFO:I = 0x5

.field private static final MESSAGE_UPDATE_SINGLE_CONTACT_INFO:I = 0x6

.field private static final MSG_QUERY_CONTACT:I = 0x100

.field private static final QUERY_MAIL:I = 0x1

.field public static final REQUEST_CODE_HTC_CONTACTS_FACEBOOK:I = 0xb

.field public static final REQUEST_CODE_HTC_CONTACTS_WITH_EMAIL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ComposeTitle"

.field public static final TITLE_TYPE_EMAIL:I = 0x0

.field public static final TITLE_TYPE_FACEBOOK:I = 0x1


# instance fields
.field private compose_recipient_button_max:I

.field private compose_recipient_button_min:I

.field private ctw:Lcom/htc/calendar/widget/ComposeTitle$ComposeTextWatcher;

.field private editTextTouchChangeListener:Landroid/view/View$OnTouchListener;

.field private editToItemClickListner:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAddContactAddress:Ljava/lang/String;

.field private mAddContactName:Ljava/lang/String;

.field private mAddedReceiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;",
            ">;"
        }
    .end annotation
.end field

.field mAddrToAdd:Ljava/lang/String;

.field private mBtnListView:Landroid/widget/LinearLayout;

.field private mCanRemoveItem:Z

.field private mClickAddr:Ljava/lang/String;

.field private mClickContactId:Ljava/lang/String;

.field private mClickMethodId:Ljava/lang/String;

.field private mClickName:Ljava/lang/String;

.field private mClickRawContactId:Ljava/lang/String;

.field private mConfirmRemoveRecipientEvent:Landroid/content/DialogInterface$OnClickListener;

.field private mContactIdList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContacts_email_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

.field private mContacts_source_id_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

.field private mDataHandler:Lcom/htc/calendar/widget/ComposeTitle$DataHandler;

.field private mDispalyNameList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDoAddcontactToContactList:Z

.field private mDoLeaveGetContactThread:Z

.field private mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

.field private mEmailAddrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailAddrList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHostActivity:Landroid/app/Activity;

.field private mIsSaved:Z

.field mLLReceiverList:Landroid/widget/LinearLayout;

.field private mLL_ReceiverList:Landroid/widget/LinearLayout;

.field private mLastView:Landroid/view/View;

.field private mMethodIdList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPartFactory:Landroid/view/LayoutInflater;

.field private mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

.field private mProcessingInputContactNow:Z

.field private mProcessingKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mQueryHandler:Lcom/htc/calendar/widget/ComposeTitle$QueryHandler;

.field private mResources:Landroid/content/res/Resources;

.field private mRowContactIdList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedSourceIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSelectView:Landroid/widget/LinearLayout;

.field private mShowRecipientDialog:Landroid/view/View$OnClickListener;

.field private mTitleType:I

.field private mToAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;

.field mWidth:I

.field private mbOnCreating:Z

.field private onFocusChanged_To:Landroid/view/View$OnFocusChangeListener;

.field private pickerOnClickListener:Landroid/view/View$OnClickListener;

.field selectViewIndex:I

.field private toKeyEvent:Landroid/view/View$OnKeyListener;

.field wToAll:I

.field wToLines:I

.field wToNow:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    const-string v0, "content://mail/emailformerge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/widget/ComposeTitle;->EMAIL_HISTORY_FOR_MERGE_URI:Landroid/net/Uri;

    .line 104
    const-string v0, "content://com.android.contacts/contacts/filter_emailaddress"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/widget/ComposeTitle;->FILTER_EMAIL_ADDRESS_URI:Landroid/net/Uri;

    .line 105
    const-string v0, "content://com.android.contacts/contacts/simple/list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/widget/ComposeTitle;->FILTER_FACEBOOK_URI:Landroid/net/Uri;

    .line 106
    const-string v0, "content://mail/email_history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/widget/ComposeTitle;->EMAIL_HISTORY_URI:Landroid/net/Uri;

    .line 107
    const-string v0, "content://com.android.contacts/raw_contacts/with_contact_name"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/widget/ComposeTitle;->FACEBOOK_URI:Landroid/net/Uri;

    .line 129
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "data2"

    aput-object v1, v0, v6

    const-string v1, "contact_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/widget/ComposeTitle;->MAIL_PROJECTION:[Ljava/lang/String;

    .line 149
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_display_name"

    aput-object v1, v0, v4

    const-string v1, "sourceid"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/calendar/widget/ComposeTitle;->FACEBOOK_PROJECT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    .line 79
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_email_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

    .line 80
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_source_id_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;

    .line 82
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    .line 83
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    .line 84
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mSavedSourceIDList:Ljava/util/ArrayList;

    .line 85
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    .line 87
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;

    .line 88
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;

    .line 89
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;

    .line 90
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mRowContactIdList2:Ljava/util/ArrayList;

    .line 91
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mMethodIdList2:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mToAddress:Ljava/util/ArrayList;

    .line 95
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    .line 97
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mLL_ReceiverList:Landroid/widget/LinearLayout;

    .line 99
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mLastView:Landroid/view/View;

    .line 123
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingInputContactNow:Z

    .line 124
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 160
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickAddr:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickContactId:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickRawContactId:Ljava/lang/String;

    .line 164
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickMethodId:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAccountName:Ljava/lang/String;

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAccountType:Ljava/lang/String;

    .line 169
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDoAddcontactToContactList:Z

    .line 170
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDoLeaveGetContactThread:Z

    .line 172
    iput v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mTitleType:I

    .line 173
    iput v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->compose_recipient_button_min:I

    .line 174
    iput v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->compose_recipient_button_max:I

    .line 176
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$1;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->onFocusChanged_To:Landroid/view/View$OnFocusChangeListener;

    .line 342
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    .line 343
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mShowRecipientDialog:Landroid/view/View$OnClickListener;

    .line 375
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$2;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mConfirmRemoveRecipientEvent:Landroid/content/DialogInterface$OnClickListener;

    .line 767
    iput-boolean v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCanRemoveItem:Z

    .line 1146
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mbOnCreating:Z

    .line 1147
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mIsSaved:Z

    .line 1159
    iput v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    .line 1161
    iput v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    .line 1163
    iput v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToLines:I

    .line 1312
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$6;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$6;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->editToItemClickListner:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1519
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$7;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$7;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->toKeyEvent:Landroid/view/View$OnKeyListener;

    .line 1618
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$ComposeTextWatcher;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$ComposeTextWatcher;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->ctw:Lcom/htc/calendar/widget/ComposeTitle$ComposeTextWatcher;

    .line 1718
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$8;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$8;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->pickerOnClickListener:Landroid/view/View$OnClickListener;

    .line 1725
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$9;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$9;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->editTextTouchChangeListener:Landroid/view/View$OnTouchListener;

    .line 2690
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$10;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$10;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mUIHandler:Landroid/os/Handler;

    .line 3072
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$13;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$13;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 224
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->init(Landroid/content/Context;)V

    .line 225
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->initUI()V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 229
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    .line 79
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_email_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

    .line 80
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_source_id_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;

    .line 82
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    .line 83
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    .line 84
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mSavedSourceIDList:Ljava/util/ArrayList;

    .line 85
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    .line 87
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;

    .line 88
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;

    .line 89
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;

    .line 90
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mRowContactIdList2:Ljava/util/ArrayList;

    .line 91
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mMethodIdList2:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mToAddress:Ljava/util/ArrayList;

    .line 95
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    .line 97
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mLL_ReceiverList:Landroid/widget/LinearLayout;

    .line 99
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mLastView:Landroid/view/View;

    .line 123
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingInputContactNow:Z

    .line 124
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 160
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickAddr:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickContactId:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickRawContactId:Ljava/lang/String;

    .line 164
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickMethodId:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAccountName:Ljava/lang/String;

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAccountType:Ljava/lang/String;

    .line 169
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDoAddcontactToContactList:Z

    .line 170
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDoLeaveGetContactThread:Z

    .line 172
    iput v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mTitleType:I

    .line 173
    iput v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->compose_recipient_button_min:I

    .line 174
    iput v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->compose_recipient_button_max:I

    .line 176
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$1;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->onFocusChanged_To:Landroid/view/View$OnFocusChangeListener;

    .line 342
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    .line 343
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mShowRecipientDialog:Landroid/view/View$OnClickListener;

    .line 375
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$2;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mConfirmRemoveRecipientEvent:Landroid/content/DialogInterface$OnClickListener;

    .line 767
    iput-boolean v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCanRemoveItem:Z

    .line 1146
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mbOnCreating:Z

    .line 1147
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mIsSaved:Z

    .line 1159
    iput v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    .line 1161
    iput v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    .line 1163
    iput v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToLines:I

    .line 1312
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$6;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$6;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->editToItemClickListner:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1519
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$7;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$7;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->toKeyEvent:Landroid/view/View$OnKeyListener;

    .line 1618
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$ComposeTextWatcher;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$ComposeTextWatcher;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->ctw:Lcom/htc/calendar/widget/ComposeTitle$ComposeTextWatcher;

    .line 1718
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$8;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$8;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->pickerOnClickListener:Landroid/view/View$OnClickListener;

    .line 1725
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$9;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$9;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->editTextTouchChangeListener:Landroid/view/View$OnTouchListener;

    .line 2690
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$10;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$10;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mUIHandler:Landroid/os/Handler;

    .line 3072
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$13;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$13;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 231
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->init(Landroid/content/Context;)V

    .line 232
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->initUI()V

    .line 233
    return-void
.end method

.method private CheckEmailAddr(Ljava/lang/String;)Z
    .locals 11
    .parameter "addr"

    .prologue
    const/16 v10, 0x2e

    const/4 v7, 0x0

    .line 1323
    if-nez p1, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return v7

    .line 1326
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 1327
    .local v6, value:[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .line 1329
    .local v2, last:I
    const/4 v5, 0x0

    .line 1330
    .local v5, nIndex:I
    const/4 v0, 0x1

    .line 1331
    .local v0, bParseFront:Z
    const/4 v3, 0x0

    .line 1332
    .local v3, nBackDot:I
    const/4 v4, 0x0

    .line 1333
    .local v4, nErrorCode:I
    const/4 v1, 0x0

    .line 1335
    .local v1, bText:Z
    :goto_1
    if-gt v5, v2, :cond_8

    .line 1336
    aget-char v8, v6, v5

    const/16 v9, 0x61

    if-lt v8, v9, :cond_2

    aget-char v8, v6, v5

    const/16 v9, 0x7a

    if-le v8, v9, :cond_5

    :cond_2
    aget-char v8, v6, v5

    const/16 v9, 0x41

    if-lt v8, v9, :cond_3

    aget-char v8, v6, v5

    const/16 v9, 0x5a

    if-le v8, v9, :cond_5

    :cond_3
    aget-char v8, v6, v5

    const/16 v9, 0x30

    if-lt v8, v9, :cond_4

    aget-char v8, v6, v5

    const/16 v9, 0x39

    if-le v8, v9, :cond_5

    :cond_4
    aget-char v8, v6, v5

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_5

    aget-char v8, v6, v5

    const/16 v9, 0x5f

    if-ne v8, v9, :cond_7

    .line 1340
    :cond_5
    const/4 v1, 0x1

    .line 1392
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1341
    :cond_7
    aget-char v8, v6, v5

    if-ne v8, v10, :cond_d

    .line 1342
    if-nez v0, :cond_6

    .line 1343
    add-int/lit8 v3, v3, 0x1

    .line 1344
    if-nez v1, :cond_c

    .line 1345
    const/4 v4, 0x1

    .line 1395
    :cond_8
    :goto_3
    if-nez v4, :cond_b

    .line 1396
    if-nez v3, :cond_9

    .line 1397
    const/16 v4, 0x11

    .line 1399
    :cond_9
    if-eqz v0, :cond_a

    .line 1400
    const/16 v4, 0x12

    .line 1402
    :cond_a
    if-nez v1, :cond_b

    .line 1403
    const/16 v4, 0x13

    .line 1411
    :cond_b
    if-nez v4, :cond_0

    .line 1412
    const/4 v7, 0x1

    goto :goto_0

    .line 1348
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 1350
    :cond_d
    aget-char v8, v6, v5

    const/16 v9, 0x25

    if-ne v8, v9, :cond_e

    .line 1351
    if-nez v0, :cond_6

    .line 1352
    const/4 v4, 0x2

    .line 1353
    goto :goto_3

    .line 1355
    :cond_e
    aget-char v8, v6, v5

    const/16 v9, 0x40

    if-ne v8, v9, :cond_10

    .line 1356
    if-nez v0, :cond_f

    .line 1357
    const/4 v4, 0x3

    .line 1358
    goto :goto_3

    .line 1360
    :cond_f
    const/4 v0, 0x0

    .line 1361
    const/4 v1, 0x0

    goto :goto_2

    .line 1362
    :cond_10
    aget-char v8, v6, v5

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_11

    aget-char v8, v6, v5

    const/16 v9, 0x3b

    if-ne v8, v9, :cond_16

    .line 1363
    :cond_11
    if-eqz v0, :cond_12

    .line 1364
    const/4 v4, 0x4

    .line 1365
    goto :goto_3

    .line 1367
    :cond_12
    if-nez v3, :cond_13

    .line 1368
    const/4 v4, 0x5

    .line 1369
    goto :goto_3

    .line 1372
    :cond_13
    if-eqz v0, :cond_14

    .line 1373
    const/4 v4, 0x6

    .line 1374
    goto :goto_3

    .line 1377
    :cond_14
    add-int/lit8 v8, v5, -0x1

    if-ltz v8, :cond_15

    .line 1378
    add-int/lit8 v8, v5, -0x1

    aget-char v8, v6, v8

    if-ne v8, v10, :cond_15

    .line 1379
    const/4 v4, 0x7

    .line 1380
    goto :goto_3

    .line 1384
    :cond_15
    const/4 v0, 0x1

    .line 1385
    const/4 v3, 0x0

    .line 1386
    const/4 v1, 0x0

    goto :goto_2

    .line 1389
    :cond_16
    const/16 v4, 0x8

    .line 1390
    goto :goto_3
.end method

.method private InsertContactProcess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "name"
    .parameter "address"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 706
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 709
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "email_isprimary"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 710
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 711
    const-string v4, "name"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 715
    const/16 v3, 0x40

    .line 716
    .local v3, token:I
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 717
    .local v2, pos:I
    if-lez v2, :cond_1

    .line 718
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, nickName:Ljava/lang/String;
    const-string v4, "name"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    .end local v1           #nickName:Ljava/lang/String;
    .end local v2           #pos:I
    .end local v3           #token:I
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 723
    const-string v4, "email"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    :cond_2
    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 727
    iput-object v7, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddContactName:Ljava/lang/String;

    .line 728
    iput-object v7, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddContactAddress:Ljava/lang/String;

    .line 732
    iput-boolean v6, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDoAddcontactToContactList:Z

    .line 734
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/calendar/widget/ComposeTitle;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mLastView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/htc/calendar/widget/ComposeTitle;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDoAddcontactToContactList:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/widget/IMEAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/calendar/widget/ComposeTitle;Landroid/widget/IMEAutoCompleteTextView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/widget/ComposeTitle;->showAutoCompleteButton(Landroid/widget/IMEAutoCompleteTextView;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/htc/calendar/widget/ComposeTitle;->MAIL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->CheckEmailAddr(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->setMultiMailSapphire(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/calendar/widget/ComposeTitle;Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->queryContactId(Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->launchPeoplePicker()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickContactId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickMethodId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->doFilterEmailType(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->showRecipientMenu()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->doFilterFacebookType(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/calendar/widget/ComposeTitle;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->doUpdateContactInfo(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/widget/ComposeTitle;->doUpdateSingleContact(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->setSavedFlag2False()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mRowContactIdList2:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;Ljava/lang/String;JJJZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p10}, Lcom/htc/calendar/widget/ComposeTitle;->setMailSapphire(Ljava/lang/String;Ljava/lang/String;JJJZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/calendar/widget/ComposeTitle;Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->removeAddedContact(Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mMethodIdList2:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mMethodIdList2:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/htc/calendar/widget/ComposeTitle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->checkEachReceiverItem()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->inputHtcContactList_Email()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->doShowRecipientMenu()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/calendar/widget/ComposeTitle;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCanRemoveItem:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->removeRecipientEvent()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/widget/ComposeTitle;->insertContact(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkCanRemove(Ljava/lang/String;)Z
    .locals 3
    .parameter "source_id"

    .prologue
    .line 3224
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mSavedSourceIDList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mSavedSourceIDList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3225
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mSavedSourceIDList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3226
    .local v1, saved:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3227
    const/4 v2, 0x0

    .line 3231
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #saved:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkEachReceiverItem()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    .line 3255
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3256
    const-string v9, "data1 LIKE ?"

    .line 3257
    .local v9, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    .line 3258
    .local v2, item:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mQueryHandler:Lcom/htc/calendar/widget/ComposeTitle$QueryHandler;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/calendar/widget/ComposeTitle;->MAIL_PROJECTION:[Ljava/lang/String;

    const-string v5, "data1 LIKE ?"

    new-array v6, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v10, v2, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    aput-object v10, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/widget/ComposeTitle$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3261
    .end local v2           #item:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #selection:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkInputBox()V
    .locals 11

    .prologue
    const-wide/16 v3, -0x1

    .line 1947
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->isFacebookType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1976
    :cond_0
    :goto_0
    return-void

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/IMEAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1953
    .local v1, strEmailList:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1954
    invoke-direct {p0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->CheckEmailAddr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1957
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/IMEAutoCompleteTextView;->requestFocus()Z

    .line 1958
    const-string v0, "checkInputBox> MAIL_ADDR_WRONG"

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1961
    :cond_2
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/IMEAutoCompleteTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mSelectView:Landroid/widget/LinearLayout;

    .line 1963
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1964
    :cond_3
    invoke-direct {p0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->setMailSapphireWithMultiEmail(Ljava/lang/String;)V

    .line 1974
    :goto_1
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/IMEAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1966
    :cond_4
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v5, v3

    move-wide v7, v3

    invoke-direct/range {v0 .. v10}, Lcom/htc/calendar/widget/ComposeTitle;->setMailSapphire(Ljava/lang/String;Ljava/lang/String;JJJZZ)V

    goto :goto_1
.end method

.method private checkSpecifiedReceiverItem(Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 3243
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->queryContactId(Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V

    .line 3245
    iget-object v1, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mView:Landroid/view/View;

    const v2, 0x7f0d00ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/widget/HtcPhotoButton;

    .line 3246
    .local v0, btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    iget-wide v1, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 3247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3251
    :goto_0
    invoke-virtual {v0}, Lcom/htc/calendar/widget/HtcPhotoButton;->requestLayout()V

    .line 3252
    return-void

    .line 3249
    :cond_0
    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private clearData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3143
    .local p1, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-eqz p1, :cond_0

    .line 3144
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3146
    :cond_0
    return-void
.end method

.method private clearOldHistory()V
    .locals 15

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/calendar/widget/ComposeTitle;->EMAIL_HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(_id)"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1807
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1835
    :goto_0
    return-void

    .line 1810
    :cond_0
    const/4 v8, 0x0

    .line 1811
    .local v8, count:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1812
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1814
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1815
    const/16 v0, 0x64

    if-le v8, v0, :cond_4

    .line 1816
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1817
    .local v13, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, i:I
    move v10, v9

    .line 1818
    .end local v9           #i:I
    .local v10, i:I
    :goto_1
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    const/16 v0, 0x14

    if-gt v10, v0, :cond_3

    .line 1819
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1820
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1821
    .local v11, id:J
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1822
    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v10, v9

    .line 1826
    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_1

    .line 1824
    .end local v10           #i:I
    .restart local v9       #i:I
    :cond_2
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1828
    .end local v11           #id:J
    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1829
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_id in (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1830
    .local v14, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/calendar/widget/ComposeTitle;->EMAIL_HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v14, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1833
    .end local v9           #i:I
    .end local v13           #sb:Ljava/lang/StringBuilder;
    .end local v14           #where:Ljava/lang/String;
    :cond_4
    new-instance v7, Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;

    invoke-direct {v7, p0, v6}, Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;-><init>(Lcom/htc/calendar/widget/ComposeTitle;Landroid/database/Cursor;)V

    .line 1834
    .local v7, closeCursor:Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;
    invoke-virtual {v7}, Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;->start()V

    goto :goto_0

    .end local v7           #closeCursor:Lcom/htc/calendar/widget/ComposeTitle$CloseCursorThread;
    .restart local v9       #i:I
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    :cond_5
    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_1
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 2488
    if-nez p1, :cond_1

    .line 2494
    :cond_0
    :goto_0
    return-void

    .line 2491
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2492
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private closeProcessDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2928
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 2929
    const-string v0, "ComposeTitle"

    const-string v1, "close processing dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    :try_start_0
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2934
    iput-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 2935
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingInputContactNow:Z

    .line 2938
    :cond_0
    :goto_0
    return-void

    .line 2932
    :catch_0
    move-exception v0

    .line 2934
    iput-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 2935
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingInputContactNow:Z

    goto :goto_0

    .line 2934
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 2935
    iput-boolean v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingInputContactNow:Z

    throw v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 188
    return-void
.end method

.method private debugResultFacebook(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1708
    .local p1, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1709
    const-string v2, "contactIdList - empty"

    invoke-direct {p0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 1716
    :cond_0
    return-void

    .line 1711
    :cond_1
    const-string v2, "------------------\ncontactIdList"

    invoke-direct {p0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1713
    .local v0, i:Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private debugResultMail(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1679
    .local p1, displayNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, emailAddrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, methodIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 1680
    const-string v3, "displayNameList - empty"

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 1688
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1689
    const-string v3, "emailAddrList - empty"

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 1697
    :cond_1
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 1698
    const-string v3, "methodIdList - empty"

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 1705
    :cond_2
    return-void

    .line 1682
    :cond_3
    const-string v3, "------------------\ndisplayNameList"

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 1683
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1684
    .local v2, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1691
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #s:Ljava/lang/String;
    :cond_4
    const-string v3, "------------------\nemailAddrList"

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 1692
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1693
    .restart local v2       #s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1700
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #s:Ljava/lang/String;
    :cond_5
    const-string v3, "------------------\nmethodIdList"

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1702
    .local v0, i:Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private doFilterEmailType(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .parameter "filter"

    .prologue
    .line 2283
    const/4 v10, 0x0

    .line 2284
    .local v10, combinedCursor:Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 2285
    const-string p1, ""

    .line 2288
    :cond_0
    const-string v2, "!"

    const-string v4, "!!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 2289
    .local v18, filterString2:Ljava/lang/String;
    const-string v2, "_"

    const-string v4, "!_"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 2290
    .local v17, filterString1:Ljava/lang/String;
    const-string v2, "%"

    const-string v4, "!%"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 2294
    .local v16, filterString:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UCS2_LOWERCASE(display_name) like \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%\' ESCAPE \'!\' OR UCS2_LOWERCASE("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "data1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") like \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%\' ESCAPE \'!\' "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2301
    .local v5, where:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where-email-new>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/calendar/widget/ComposeTitle;->EMAIL_HISTORY_FOR_MERGE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 2307
    .local v19, historyCursor:Landroid/database/Cursor;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 2308
    .local v15, excludedAddress:Ljava/lang/StringBuffer;
    if-eqz v19, :cond_4

    .line 2309
    const-string v2, "data1"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 2310
    .local v20, index:I
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2311
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2312
    .local v8, address:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 2313
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 2315
    :cond_1
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2316
    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2319
    :cond_2
    const-string v2, ", "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2323
    .end local v8           #address:Ljava/lang/String;
    :cond_3
    const/4 v2, -0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2326
    .end local v20           #index:I
    :cond_4
    sget-object v2, Lcom/htc/calendar/widget/ComposeTitle;->FILTER_EMAIL_ADDRESS_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 2327
    .local v9, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2328
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2330
    .local v3, contUri:Landroid/net/Uri;
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 2331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lower(data1) not in ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2333
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/widget/ComposeTitle;->isEmailType()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "AND account_type=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2340
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/calendar/widget/ComposeTitle;->MAIL_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2342
    .local v12, contactsCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_9

    .line 2343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contactsCursor count>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2349
    :goto_2
    const/4 v2, 0x2

    new-array v13, v2, [Landroid/database/Cursor;

    .line 2350
    .local v13, cursorList:[Landroid/database/Cursor;
    if-eqz v19, :cond_a

    if-eqz v12, :cond_a

    .line 2351
    const/4 v2, 0x0

    aput-object v19, v13, v2

    .line 2352
    const/4 v2, 0x1

    aput-object v12, v13, v2

    .line 2354
    :try_start_0
    new-instance v11, Landroid/database/MergeCursor;

    invoke-direct {v11, v13}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #combinedCursor:Landroid/database/Cursor;
    .local v11, combinedCursor:Landroid/database/Cursor;
    move-object v10, v11

    .end local v11           #combinedCursor:Landroid/database/Cursor;
    .restart local v10       #combinedCursor:Landroid/database/Cursor;
    :cond_6
    move-object v12, v10

    .line 2375
    .end local v12           #contactsCursor:Landroid/database/Cursor;
    :cond_7
    :goto_3
    return-object v12

    .line 2338
    .end local v13           #cursorList:[Landroid/database/Cursor;
    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    .line 2345
    .restart local v12       #contactsCursor:Landroid/database/Cursor;
    :cond_9
    const-string v2, "contactsCursor is null>"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 2355
    .restart local v13       #cursorList:[Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .line 2356
    .local v14, e:Ljava/lang/Exception;
    const-string v2, "ComposeTitle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MergeCursor error>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->closeCursor(Landroid/database/Cursor;)V

    .line 2358
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/calendar/widget/ComposeTitle;->closeCursor(Landroid/database/Cursor;)V

    .line 2359
    const/4 v12, 0x0

    goto :goto_3

    .line 2362
    .end local v14           #e:Ljava/lang/Exception;
    :cond_a
    if-nez v12, :cond_7

    .line 2365
    if-eqz v19, :cond_6

    move-object/from16 v12, v19

    .line 2366
    goto :goto_3
.end method

.method private doFilterFacebookType(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 2379
    const/4 v7, 0x0

    .line 2380
    .local v7, combinedCursor:Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 2381
    const-string p1, ""

    .line 2384
    :cond_0
    const-string v0, "!"

    const-string v3, "!!"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 2385
    .local v11, filterString2:Ljava/lang/String;
    const-string v0, "_"

    const-string v3, "!_"

    invoke-virtual {v11, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2386
    .local v10, filterString1:Ljava/lang/String;
    const-string v0, "%"

    const-string v3, "!%"

    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 2390
    .local v9, filterString:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCS2_LOWERCASE(display_name) like \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\' ESCAPE \'!\' OR UCS2_LOWERCASE("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "data1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") like \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\' ESCAPE \'!\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2397
    .local v12, where:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where-facebook-new>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2427
    sget-object v0, Lcom/htc/calendar/widget/ComposeTitle;->FILTER_FACEBOOK_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 2428
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v6, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2429
    const-string v0, "account_type"

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAccountType:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2430
    const-string v0, "account_name"

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAccountName:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2432
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2433
    .local v1, contUri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFilterFacebook: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2447
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2453
    .local v8, contactsCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 2454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contactsCursor count>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2455
    move-object v7, v8

    .line 2484
    :goto_0
    return-object v7

    .line 2457
    :cond_1
    const-string v0, "contactsCursor is null>"

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2458
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private doShowHintList_Email(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 1177
    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_email_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

    invoke-virtual {v4}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->getCount()I

    move-result v3

    .line 1178
    .local v3, nCount:I
    if-lez v3, :cond_1

    if-le v3, p1, :cond_1

    .line 1179
    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_email_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

    invoke-virtual {v4}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1180
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1181
    const-string v4, "display_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;

    .line 1182
    const-string v4, "data1"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickAddr:Ljava/lang/String;

    .line 1183
    const-string v4, "contact_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickContactId:Ljava/lang/String;

    .line 1185
    const/4 v2, -0x1

    .line 1187
    .local v2, index_of_raw_contact_id:I
    :try_start_0
    const-string v4, "raw_contact_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1192
    :goto_0
    if-gez v2, :cond_0

    .line 1193
    const-string v4, "-1"

    iput-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickRawContactId:Ljava/lang/String;

    .line 1197
    :goto_1
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickMethodId:Ljava/lang/String;

    .line 1202
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #index_of_raw_contact_id:I
    :goto_2
    return v3

    .line 1188
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #index_of_raw_contact_id:I
    :catch_0
    move-exception v1

    .line 1189
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    const-string v4, "ComposeTitle"

    const-string v5, "No such column: RAW_CONTACT_ID"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1195
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickRawContactId:Ljava/lang/String;

    goto :goto_1

    .line 1200
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #index_of_raw_contact_id:I
    :cond_1
    const-string v4, "ComposeTitle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adapter Cursor is invalid count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doShowHistList_Facebook(I)I
    .locals 8
    .parameter "position"

    .prologue
    .line 1246
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_source_id_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;

    invoke-virtual {v3}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->getCount()I

    move-result v2

    .line 1247
    .local v2, nCount:I
    if-lez v2, :cond_1

    if-le v2, p1, :cond_1

    .line 1248
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_source_id_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;

    invoke-virtual {v3}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1249
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1250
    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;

    .line 1251
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickContactId:Ljava/lang/String;

    .line 1252
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickContactId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->getRowContactIDByContactID(Ljava/lang/String;)Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;

    move-result-object v1

    .line 1253
    .local v1, fci:Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;
    if-eqz v1, :cond_0

    .line 1254
    iget-object v3, v1, Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;->mRawContactId:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickRawContactId:Ljava/lang/String;

    .line 1255
    iget-object v3, v1, Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;->mSourceId:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickAddr:Ljava/lang/String;

    .line 1260
    :goto_0
    const-string v3, "-1"

    iput-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickMethodId:Ljava/lang/String;

    .line 1262
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Facebook list onClick: mClickAddr: %s mClickName: %s mClickContactId: %s mClickRowContactId: %s mClickMethodId: %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickAddr:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickContactId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickRawContactId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickMethodId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 1272
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #fci:Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;
    :goto_1
    return v2

    .line 1257
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #fci:Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;
    :cond_0
    const-string v3, "-1"

    iput-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickRawContactId:Ljava/lang/String;

    .line 1258
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mClickAddr:Ljava/lang/String;

    goto :goto_0

    .line 1269
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #fci:Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;
    :cond_1
    const-string v3, "ComposeTitle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adapter Cursor is invalid count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private doShowRecipientMenu()V
    .locals 13

    .prologue
    const v12, 0x7f08005a

    const v11, 0x7f080059

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 782
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 787
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mView:Landroid/view/View;

    const v4, 0x7f0d00ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/widget/HtcPhotoButton;

    .line 788
    .local v2, mButton:Lcom/htc/calendar/widget/HtcPhotoButton;
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-wide v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 789
    const v3, 0x7f02008c

    invoke-virtual {v2, v3}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageResource(I)V

    .line 793
    :cond_0
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 794
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/calendar/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    .line 799
    :goto_0
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->isShowContactInfo()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 800
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 801
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->checkCanRemove(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCanRemoveItem:Z

    .line 814
    :goto_1
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddrToAdd:Ljava/lang/String;

    .line 818
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "currRecipient contact_id:%s row_contact_id:%s"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-wide v6, v6, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-wide v6, v6, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->row_contact_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 822
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-wide v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    .line 823
    iget-boolean v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCanRemoveItem:Z

    if-eqz v3, :cond_4

    .line 824
    new-array v0, v10, [Ljava/lang/String;

    .line 825
    .local v0, addrLists:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v8

    .line 826
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    .line 838
    :goto_2
    new-instance v3, Lcom/htc/calendar/widget/ComposeTitle$5;

    invoke-direct {v3, p0}, Lcom/htc/calendar/widget/ComposeTitle$5;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    invoke-virtual {v1, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 904
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    if-eqz v3, :cond_6

    .line 905
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 910
    :goto_3
    return-void

    .line 796
    .end local v0           #addrLists:[Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/calendar/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 805
    :cond_2
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v4, v4, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 807
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v4, v4, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v4, v4, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto/16 :goto_1

    .line 809
    :cond_3
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto/16 :goto_1

    .line 828
    :cond_4
    new-array v0, v9, [Ljava/lang/String;

    .line 829
    .restart local v0       #addrLists:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    goto :goto_2

    .line 832
    .end local v0           #addrLists:[Ljava/lang/CharSequence;
    :cond_5
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    .line 833
    .restart local v0       #addrLists:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v8

    .line 834
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v9

    .line 835
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v10

    goto/16 :goto_2

    .line 907
    :cond_6
    const-string v3, "ComposeTitle"

    const-string v4, "mHostActivity is null!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private doUpdateContactInfo(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2571
    packed-switch p1, :pswitch_data_0

    .line 2578
    :goto_0
    return-void

    .line 2573
    :pswitch_0
    const v0, 0x7f0d00fc

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/htc/calendar/widget/ComposeTitle;->updateToContacts(IIZLjava/lang/Object;)V

    .line 2574
    const v0, 0x7f0d00fd

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/htc/calendar/widget/ComposeTitle;->updateToContacts(IIZLjava/lang/Object;)V

    goto :goto_0

    .line 2571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private doUpdateSingleContact(Ljava/lang/Object;I)V
    .locals 2
    .parameter "obj"
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 2681
    packed-switch p2, :pswitch_data_0

    .line 2688
    :goto_0
    return-void

    .line 2683
    :pswitch_0
    const v0, 0x7f0d00fc

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/htc/calendar/widget/ComposeTitle;->updateToContacts(IIZLjava/lang/Object;)V

    .line 2684
    const v0, 0x7f0d00fd

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/htc/calendar/widget/ComposeTitle;->updateToContacts(IIZLjava/lang/Object;)V

    goto :goto_0

    .line 2681
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getAddrListString(Ljava/util/List;ZZZ)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter "saveAddressHistory"
    .parameter "needEncode"
    .parameter "bEx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;",
            ">;ZZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1914
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1915
    .local v7, addString:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    .line 1916
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    .line 1918
    .local v10, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v10, :cond_2

    .line 1919
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    .line 1920
    .local v6, a:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    iget-boolean v0, v6, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->removed:Z

    if-eqz v0, :cond_0

    .line 1918
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1924
    :cond_0
    if-eqz p4, :cond_1

    .line 1925
    iget-object v0, v6, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    iget-object v1, v6, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/htc/calendar/widget/ComposeTitle;->getAddrStringEx(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1927
    :cond_1
    iget-object v1, v6, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    iget-object v2, v6, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    iget-wide v3, v6, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->row_contact_id:J

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/calendar/widget/ComposeTitle;->getAddrString(Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1930
    .end local v6           #a:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    :cond_2
    if-eqz p2, :cond_3

    .line 1931
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->saveAddressHistory(Ljava/util/List;)V

    .line 1935
    .end local v8           #i:I
    .end local v10           #size:I
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    .line 1937
    .local v9, len:I
    if-lez v9, :cond_5

    add-int/lit8 v0, v9, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_5

    .line 1938
    const/4 v1, 0x0

    add-int/lit8 v0, v9, -0x1

    if-gez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v7, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1940
    :goto_3
    return-object v0

    .line 1938
    :cond_4
    add-int/lit8 v0, v9, -0x1

    goto :goto_2

    .line 1940
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private getAddrString(Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 4
    .parameter "name"
    .parameter "address"
    .parameter "row_contact_id"
    .parameter "needEncode"

    .prologue
    .line 1756
    if-eqz p1, :cond_3

    .line 1759
    :try_start_0
    invoke-static {}, Lcom/htc/calendar/utils/Regex;->getInstance()Lcom/htc/calendar/utils/Regex;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/htc/calendar/utils/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1760
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1761
    if-eqz p5, :cond_0

    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/htc/calendar/utils/ComposeTitleUtils;->needEncode([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1762
    invoke-static {p1}, Lcom/htc/calendar/utils/ComposeTitleUtils;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1764
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1773
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1775
    :goto_1
    return-object v2

    .line 1766
    .restart local v1       #matcher:Ljava/util/regex/Matcher;
    :cond_2
    if-eqz p5, :cond_1

    :try_start_1
    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/htc/calendar/utils/ComposeTitleUtils;->needEncode([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1767
    invoke-static {p1}, Lcom/htc/calendar/utils/ComposeTitleUtils;->rfc2047Base64Encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    .line 1770
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 1771
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1775
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getAddrStringEx(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .parameter "name"
    .parameter "address"
    .parameter "needEncode"

    .prologue
    .line 1799
    return-object p2
.end method

.method private getBtnWidth(Lcom/htc/calendar/widget/HtcPhotoButton;)I
    .locals 3
    .parameter "btn"

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/htc/calendar/widget/HtcPhotoButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/calendar/widget/HtcPhotoButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p1}, Lcom/htc/calendar/widget/HtcPhotoButton;->getImageWidth()I

    move-result v2

    add-int v0, v1, v2

    .line 325
    .local v0, w:I
    iget v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->compose_recipient_button_min:I

    if-nez v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->compose_recipient_button_min:I

    .line 329
    :cond_0
    iget v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->compose_recipient_button_max:I

    if-nez v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->compose_recipient_button_max:I

    .line 333
    :cond_1
    iget v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->compose_recipient_button_max:I

    if-le v0, v1, :cond_2

    .line 334
    iget v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->compose_recipient_button_max:I

    .line 336
    :cond_2
    iget v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->compose_recipient_button_min:I

    if-ge v0, v1, :cond_3

    .line 337
    iget v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->compose_recipient_button_min:I

    .line 339
    :cond_3
    return v0
.end method

.method private getContactId(Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V
    .locals 11
    .parameter "a"

    .prologue
    const/4 v4, 0x0

    .line 2507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data1 like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2508
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/calendar/widget/ComposeTitle;->MAIL_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2509
    .local v8, cCursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 2527
    :goto_0
    return-void

    .line 2512
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2513
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2514
    .local v7, _mId:Ljava/lang/String;
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2515
    .local v6, _Id:Ljava/lang/String;
    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2517
    .local v10, name:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->method_id:J

    .line 2518
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    .line 2519
    iput-object v10, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2526
    .end local v6           #_Id:Ljava/lang/String;
    .end local v7           #_mId:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v8}, Lcom/htc/calendar/widget/ComposeTitle;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 2520
    .restart local v6       #_Id:Ljava/lang/String;
    .restart local v7       #_mId:Ljava/lang/String;
    .restart local v10       #name:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2521
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v0, "get NumberFormatException exception in getContactId()"

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 2524
    .end local v6           #_Id:Ljava/lang/String;
    .end local v7           #_mId:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .end local v10           #name:Ljava/lang/String;
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    goto :goto_1
.end method

.method private getContactIdByEmailAddress(ILjava/lang/String;)I
    .locals 5
    .parameter "mode"
    .parameter "address"

    .prologue
    const/4 v4, -0x1

    .line 2608
    const/4 v0, 0x0

    .line 2610
    .local v0, addrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    packed-switch p1, :pswitch_data_0

    .line 2616
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 2628
    :goto_1
    return v3

    .line 2612
    :pswitch_0
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mToAddress:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #addrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    check-cast v0, Ljava/util/ArrayList;

    .restart local v0       #addrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    goto :goto_0

    .line 2620
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2621
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 2622
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2623
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;

    iget v3, v3, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mContactId:I

    goto :goto_1

    .line 2621
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2627
    :cond_3
    const/4 v0, 0x0

    move v3, v4

    .line 2628
    goto :goto_1

    .line 2610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getMailAddress(ILjava/lang/String;)I
    .locals 6
    .parameter "mode"
    .parameter "address"

    .prologue
    const/4 v4, -0x1

    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, addrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    packed-switch p1, :pswitch_data_0

    .line 392
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    move v1, v4

    .line 409
    :cond_1
    :goto_1
    return v1

    .line 387
    :pswitch_0
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mToAddress:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    move v1, v4

    goto :goto_1

    .line 388
    :cond_2
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mToAddress:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #addrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    check-cast v0, Ljava/util/ArrayList;

    .restart local v0       #addrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    goto :goto_0

    .line 396
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 397
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 398
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mEmail:Ljava/lang/String;

    if-eq v3, p2, :cond_1

    .line 401
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mEmail:Ljava/lang/String;

    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    .line 402
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 397
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 408
    :cond_5
    const/4 v0, 0x0

    move v1, v4

    .line 409
    goto :goto_1

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getModeToCcBcc()I
    .locals 3

    .prologue
    .line 1168
    const/4 v0, -0x1

    .line 1169
    .local v0, mode:I
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mSelectView:Landroid/widget/LinearLayout;

    const v1, 0x7f0d00f8

    invoke-virtual {p0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-ne v2, v1, :cond_0

    .line 1170
    const/4 v0, 0x0

    .line 1172
    :cond_0
    return v0
.end method

.method private getReceiverTextView(ILandroid/widget/LinearLayout;Landroid/view/LayoutInflater;)Landroid/widget/IMEAutoCompleteTextView;
    .locals 2
    .parameter "resId"
    .parameter "receiverLayout"
    .parameter "inflater"

    .prologue
    .line 1595
    packed-switch p1, :pswitch_data_0

    .line 1602
    const/4 v0, 0x0

    .line 1614
    :goto_0
    return-object v0

    .line 1597
    :pswitch_0
    const v1, 0x7f0d00f9

    invoke-virtual {p0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/IMEAutoCompleteTextView;

    .line 1598
    .local v0, textView:Landroid/widget/IMEAutoCompleteTextView;
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->onFocusChanged_To:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/IMEAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1599
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->editToItemClickListner:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/IMEAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1605
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->ctw:Lcom/htc/calendar/widget/ComposeTitle$ComposeTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/IMEAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1607
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_email_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/IMEAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1608
    const v1, 0x10021

    invoke-virtual {v0, v1}, Landroid/widget/IMEAutoCompleteTextView;->setInputType(I)V

    .line 1609
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->toKeyEvent:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/IMEAutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1610
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/IMEAutoCompleteTextView;->setThreshold(I)V

    goto :goto_0

    .line 1595
    :pswitch_data_0
    .packed-switch 0x7f0d00f8
        :pswitch_0
    .end packed-switch
.end method

.method private getRowContactIDByContactID(Ljava/lang/String;)Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;
    .locals 10
    .parameter "contact_id"

    .prologue
    const/4 v4, 0x0

    .line 1217
    const/4 v6, 0x0

    .line 1218
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1219
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND account_type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb-getRowContactIDByContactID-selection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 1222
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/calendar/widget/ComposeTitle;->FACEBOOK_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/calendar/widget/ComposeTitle;->FACEBOOK_PROJECT:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1230
    if-eqz v6, :cond_1

    .line 1231
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1232
    .local v7, nCnt:I
    if-lez v7, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1234
    .local v8, raw_contact_id:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1235
    .local v9, source_id:Ljava/lang/String;
    new-instance v4, Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;

    invoke-direct {v4, p0, v8, v9}, Lcom/htc/calendar/widget/ComposeTitle$FacebookContactInfo;-><init>(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    .end local v7           #nCnt:I
    .end local v8           #raw_contact_id:Ljava/lang/String;
    .end local v9           #source_id:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 1238
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb-getRowContactIDByContactID not found in people contact_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 240
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    .line 241
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    .line 242
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    .line 243
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;-><init>(Lcom/htc/calendar/widget/ComposeTitle;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_email_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

    .line 244
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;-><init>(Lcom/htc/calendar/widget/ComposeTitle;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_source_id_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;

    .line 246
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDataHandler:Lcom/htc/calendar/widget/ComposeTitle$DataHandler;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$DataHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/calendar/widget/ComposeTitle$DataHandler;-><init>(Lcom/htc/calendar/widget/ComposeTitle;Lcom/htc/calendar/widget/ComposeTitle$1;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDataHandler:Lcom/htc/calendar/widget/ComposeTitle$DataHandler;

    .line 249
    :cond_0
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$QueryHandler;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/widget/ComposeTitle$QueryHandler;-><init>(Lcom/htc/calendar/widget/ComposeTitle;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mQueryHandler:Lcom/htc/calendar/widget/ComposeTitle$QueryHandler;

    .line 250
    return-void
.end method

.method private initUI()V
    .locals 7

    .prologue
    const v6, 0x7f0d00f8

    const/4 v5, 0x0

    .line 253
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 255
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03003b

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 257
    const v0, 0x7f02005f

    .line 261
    .local v0, ID_ICON_CONTACT_PICKER:I
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mPartFactory:Landroid/view/LayoutInflater;

    .line 268
    const v2, 0x7f0d00ca

    const v3, 0x7f02005f

    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->pickerOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/calendar/widget/ComposeTitle;->setPickerBtn(IILandroid/view/View$OnClickListener;)V

    .line 276
    const v2, 0x7f0d00f9

    invoke-virtual {p0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/IMEAutoCompleteTextView;

    iput-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    .line 277
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    const v3, 0x7f080056

    invoke-virtual {v2, v3}, Landroid/widget/IMEAutoCompleteTextView;->setHint(I)V

    .line 278
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->editTextTouchChangeListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/IMEAutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    const v4, 0x2050029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/IMEAutoCompleteTextView;->setTextSize(IF)V

    .line 280
    invoke-virtual {p0, v6}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mLL_ReceiverList:Landroid/widget/LinearLayout;

    .line 281
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mLL_ReceiverList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mLL_ReceiverList:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mSelectView:Landroid/widget/LinearLayout;

    .line 283
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mLL_ReceiverList:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6, v2, v1}, Lcom/htc/calendar/widget/ComposeTitle;->getReceiverTextView(ILandroid/widget/LinearLayout;Landroid/view/LayoutInflater;)Landroid/widget/IMEAutoCompleteTextView;

    .line 284
    return-void
.end method

.method private inputHtcContactList_Email()V
    .locals 22

    .prologue
    .line 2941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2942
    const-string v2, "ComposeTitle"

    const-string v3, "mPeople is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 2947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2949
    .local v14, count:I
    const/4 v15, 0x0

    .line 2950
    .local v15, cursor:Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;

    .line 2951
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;

    .line 2952
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;

    .line 2953
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mRowContactIdList2:Ljava/util/ArrayList;

    .line 2954
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mMethodIdList2:Ljava/util/ArrayList;

    .line 2956
    const/16 v17, 0x0

    .local v17, index:I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v14, :cond_8

    .line 2957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v18

    .line 2958
    .local v18, method_id:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2959
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/calendar/widget/ComposeTitle;->MAIL_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2971
    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2972
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2973
    .local v10, _displayname:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2974
    .local v9, _data_emailAddr:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2975
    .local v8, _contact_id:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2976
    .local v11, _row_contact_id:Ljava/lang/String;
    const-wide/16 v12, -0x1

    .line 2978
    .local v12, contact_id:J
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v12, v2

    .line 2983
    :goto_1
    const-wide/16 v20, -0x1

    .line 2985
    .local v20, row_contact_id:J
    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v20, v0

    .line 2990
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2993
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 2994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2996
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 2997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2999
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mRowContactIdList2:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 3000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mRowContactIdList2:Ljava/util/ArrayList;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3002
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mMethodIdList2:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 3003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mMethodIdList2:Ljava/util/ArrayList;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3005
    :cond_5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Email-->mid:%s contact_id:%d row_contact_id:%s display_name:%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    aput-object v10, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 3010
    .end local v8           #_contact_id:Ljava/lang/String;
    .end local v9           #_data_emailAddr:Ljava/lang/String;
    .end local v10           #_displayname:Ljava/lang/String;
    .end local v11           #_row_contact_id:Ljava/lang/String;
    .end local v12           #contact_id:J
    .end local v20           #row_contact_id:J
    :goto_3
    if-eqz v15, :cond_6

    .line 3011
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/calendar/widget/ComposeTitle;->closeCursor(Landroid/database/Cursor;)V

    .line 2956
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 2979
    .restart local v8       #_contact_id:Ljava/lang/String;
    .restart local v9       #_data_emailAddr:Ljava/lang/String;
    .restart local v10       #_displayname:Ljava/lang/String;
    .restart local v11       #_row_contact_id:Ljava/lang/String;
    .restart local v12       #contact_id:J
    :catch_0
    move-exception v16

    .line 2980
    .local v16, e:Ljava/lang/NumberFormatException;
    const-string v2, "ComposeTitle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get NumberFormatException exception in inputContactList()>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2986
    .end local v16           #e:Ljava/lang/NumberFormatException;
    .restart local v20       #row_contact_id:J
    :catch_1
    move-exception v16

    .line 2987
    .restart local v16       #e:Ljava/lang/NumberFormatException;
    const-string v2, "ComposeTitle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get NumberFormatException exception in inputContactList()>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3008
    .end local v8           #_contact_id:Ljava/lang/String;
    .end local v9           #_data_emailAddr:Ljava/lang/String;
    .end local v10           #_displayname:Ljava/lang/String;
    .end local v11           #_row_contact_id:Ljava/lang/String;
    .end local v12           #contact_id:J
    .end local v16           #e:Ljava/lang/NumberFormatException;
    .end local v20           #row_contact_id:J
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find contact>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 3015
    .end local v5           #where:Ljava/lang/String;
    .end local v14           #count:I
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v17           #index:I
    .end local v18           #method_id:J
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    .line 3016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    new-instance v3, Lcom/htc/calendar/widget/ComposeTitle$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/calendar/widget/ComposeTitle$12;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3069
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/widget/ComposeTitle;->closeProcessDialog()V

    .line 3070
    return-void
.end method

.method private insertContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "name"
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 737
    const/4 v7, 0x0

    .line 738
    .local v7, found:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertContact thread>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 739
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 742
    .local v2, PROJECT:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data1 like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 744
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 745
    .local v6, cCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    const/4 v7, 0x1

    .line 748
    :cond_0
    invoke-direct {p0, v6}, Lcom/htc/calendar/widget/ComposeTitle;->closeCursor(Landroid/database/Cursor;)V

    .line 749
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddContactName:Ljava/lang/String;

    .line 750
    iput-object p2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddContactAddress:Ljava/lang/String;

    .line 751
    if-eqz v7, :cond_1

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/widget/ComposeTitle;->InsertContactProcess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isEmailType()Z
    .locals 1

    .prologue
    .line 3216
    iget v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mTitleType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFacebookType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3220
    iget v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mTitleType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1985
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowContactInfo()Z
    .locals 1

    .prologue
    .line 3235
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->isFacebookType()Z

    move-result v0

    return v0
.end method

.method private launchPeoplePicker()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1629
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    .line 1630
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    .line 1631
    iput-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    .line 1633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTitleType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mTitleType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAccountName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 1635
    iget v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mTitleType:I

    if-nez v1, :cond_1

    .line 1636
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1637
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1638
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "Protocol"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1639
    const-string v1, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1641
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1642
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1654
    :cond_0
    :goto_0
    return-void

    .line 1645
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1646
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1647
    const-string v1, "PARAM_LINKED_TO_ACCOUNT_NAME"

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1648
    const-string v1, "PARAM_LINKED_TO_ACCOUNT_TYPE"

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1651
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private openProcessDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingInputContactNow:Z

    .line 3084
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 3085
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    const v2, 0x7f0800ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3086
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 3087
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 3088
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 3089
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3091
    :try_start_0
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3094
    :goto_0
    return-void

    .line 3092
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private queryContactId(Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V
    .locals 14
    .parameter "receiver"

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 951
    :goto_0
    return-void

    .line 916
    :cond_0
    const/4 v9, -0x1

    .line 917
    .local v9, contactId:I
    const/4 v11, -0x1

    .line 918
    .local v11, methodId:I
    const-string v12, "data1 LIKE ?"

    .line 919
    .local v12, selection:Ljava/lang/String;
    const/4 v8, 0x0

    .line 921
    .local v8, cCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/calendar/widget/ComposeTitle;->MAIL_PROJECTION:[Ljava/lang/String;

    const-string v3, "data1 LIKE ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v13, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 925
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 927
    .local v7, _mId:Ljava/lang/String;
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 930
    .local v6, _Id:Ljava/lang/String;
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 931
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 939
    .end local v6           #_Id:Ljava/lang/String;
    .end local v7           #_mId:Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 944
    :cond_2
    :goto_2
    if-ltz v9, :cond_4

    if-ltz v11, :cond_4

    .line 945
    int-to-long v0, v9

    iput-wide v0, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    .line 946
    int-to-long v0, v11

    iput-wide v0, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->method_id:J

    goto :goto_0

    .line 932
    .restart local v6       #_Id:Ljava/lang/String;
    .restart local v7       #_mId:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 933
    .local v10, e:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v0, "NumberFormatException occurs in getContactId()"

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 936
    .end local v6           #_Id:Ljava/lang/String;
    .end local v7           #_mId:Ljava/lang/String;
    .end local v10           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v10

    .line 937
    .local v10, e:Ljava/lang/Exception;
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryContactId() Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 939
    if-eqz v8, :cond_2

    .line 940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 939
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 948
    :cond_4
    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    .line 949
    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->method_id:J

    goto/16 :goto_0
.end method

.method private removeAddedContact(Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V
    .locals 7
    .parameter "currRecipient"

    .prologue
    .line 626
    iget-wide v3, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 627
    const-string v3, "confirmRemoveRecipientEvent  currRecipient.id"

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 662
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v3, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 631
    .local v2, v:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_1

    .line 632
    iget-object v3, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 636
    :cond_1
    iget v3, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->group:I

    packed-switch v3, :pswitch_data_0

    .line 660
    :goto_1
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->setSavedFlag2False()V

    goto :goto_0

    .line 639
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 640
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    .line 641
    .local v1, receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    iget-wide v3, v1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mId:J

    iget-wide v5, p1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 642
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 646
    .end local v1           #receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    :cond_2
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 647
    const v3, 0x7f0d00fa

    invoke-virtual {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 649
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    goto :goto_1

    .line 639
    .restart local v1       #receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 651
    .end local v1           #receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->setMailSapphireUI(I)V

    goto :goto_1

    .line 636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private removeRecipientEvent()V
    .locals 3

    .prologue
    .line 371
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-wide v1, v1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mId:J

    long-to-int v0, v1

    .line 372
    .local v0, id:I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->showDlg_Recipient(IZ)V

    .line 373
    return-void
.end method

.method private saveAddressHistory(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1875
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 1876
    .local v5, size:I
    if-nez v5, :cond_0

    .line 1910
    :goto_0
    return-void

    .line 1880
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1881
    .local v4, sb:Ljava/lang/StringBuilder;
    new-array v7, v5, [Landroid/content/ContentValues;

    .line 1883
    .local v7, valuesArray:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_4

    .line 1884
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    .line 1885
    .local v3, receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1886
    .local v6, values:Landroid/content/ContentValues;
    iget-object v9, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1887
    const-string v9, "name"

    iget-object v10, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    :cond_1
    iget-object v9, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1890
    const-string v9, "data"

    iget-object v10, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    :cond_2
    aput-object v6, v7, v2

    .line 1893
    iget-object v0, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    .line 1894
    .local v0, addr:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 1895
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1897
    :cond_3
    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1902
    .end local v0           #addr:Ljava/lang/String;
    .end local v3           #receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_4
    :try_start_0
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "data in (%s)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1903
    .local v8, where:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/htc/calendar/widget/ComposeTitle;->EMAIL_HISTORY_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v8, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1904
    iget-object v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/htc/calendar/widget/ComposeTitle;->EMAIL_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1905
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->clearOldHistory()V

    .line 1906
    const-string v9, "saveAddressHistory>"

    invoke-direct {p0, v9}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1907
    .end local v8           #where:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1908
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "ComposeTitle"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveAddressHistory Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setMailSapphire(Ljava/lang/String;Ljava/lang/String;JJJZZ)V
    .locals 12
    .parameter "mailaddr"
    .parameter "name"
    .parameter "contact_id"
    .parameter "row_contact_id"
    .parameter "methodId"
    .parameter "checkDupicated"
    .parameter "onlyOne"

    .prologue
    .line 970
    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 971
    if-eqz p2, :cond_0

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 972
    :cond_0
    const-string v8, "got empty reipient"

    invoke-direct {p0, v8}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 1121
    :goto_0
    return-void

    .line 976
    :cond_1
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 977
    const-string v8, "email same with owner account "

    invoke-direct {p0, v8}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 980
    :cond_2
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mSelectView:Landroid/widget/LinearLayout;

    if-nez v8, :cond_3

    .line 981
    const-string v8, "ComposeTitle"

    const-string v9, "selectView null return"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 984
    :cond_3
    new-instance v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    invoke-direct {v5, p0}, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    .line 985
    .local v5, receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    iput-object p1, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    .line 986
    iput-object p2, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    .line 987
    move-wide/from16 v0, p5

    iput-wide v0, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->row_contact_id:J

    .line 988
    move-object v3, p2

    .line 989
    .local v3, dispName:Ljava/lang/String;
    if-nez p2, :cond_4

    .line 990
    move-object v3, p1

    .line 992
    :cond_4
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz p1, :cond_5

    .line 993
    move-object v3, p1

    .line 996
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 997
    .local v6, t:J
    iput-wide v6, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mId:J

    .line 1002
    iput-wide p3, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    .line 1005
    move-wide/from16 v0, p7

    iput-wide v0, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->method_id:J

    .line 1006
    iget v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    if-nez v8, :cond_6

    .line 1007
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 1008
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f090040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    .line 1013
    :cond_6
    :goto_1
    const v8, 0x7f0d00f8

    invoke-virtual {p0, v8}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->mSelectView:Landroid/widget/LinearLayout;

    if-ne v8, v9, :cond_a

    .line 1014
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    if-nez v8, :cond_7

    .line 1015
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    .line 1017
    :cond_7
    const v8, 0x7f0d00fa

    invoke-virtual {p0, v8}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_e

    .line 1020
    const v8, 0x7f0d00fc

    invoke-virtual {p0, v8}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    .line 1021
    const v8, 0x7f0d00fa

    invoke-virtual {p0, v8}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1022
    const v8, 0x7f0d00fc

    invoke-virtual {p0, v8}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1023
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mPartFactory:Landroid/view/LayoutInflater;

    const v9, 0x7f030035

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1028
    .local v4, ll:Landroid/widget/LinearLayout;
    const v8, 0x7f0d00ef

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/widget/HtcPhotoButton;

    .line 1029
    .local v2, btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    const-wide/16 v8, -0x1

    cmp-long v8, p3, v8

    if-nez v8, :cond_c

    .line 1030
    const v8, 0x7f02008c

    invoke-virtual {v2, v8}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageResource(I)V

    .line 1036
    :goto_2
    invoke-virtual {v2, v3}, Lcom/htc/calendar/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mShowRecipientDialog:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v8}, Lcom/htc/calendar/widget/HtcPhotoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    invoke-direct {p0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->getBtnWidth(Lcom/htc/calendar/widget/HtcPhotoButton;)I

    move-result v8

    iput v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    .line 1042
    if-nez p10, :cond_8

    .line 1043
    iget v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    invoke-virtual {v2, v8}, Lcom/htc/calendar/widget/HtcPhotoButton;->setWidth(I)V

    .line 1046
    :cond_8
    iput-object v4, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mView:Landroid/view/View;

    .line 1047
    const/4 v8, 0x1

    iput v8, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->group:I

    .line 1048
    iput-wide p3, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    .line 1049
    invoke-virtual {v2, v5}, Lcom/htc/calendar/widget/HtcPhotoButton;->setTag(Ljava/lang/Object;)V

    .line 1053
    iget v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    iget v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    if-gt v8, v9, :cond_d

    .line 1055
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1056
    iget v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    iget v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    .line 1108
    :goto_3
    iget-wide v8, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    .line 1109
    invoke-direct {p0, v5}, Lcom/htc/calendar/widget/ComposeTitle;->checkSpecifiedReceiverItem(Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V

    .line 1112
    :cond_9
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    .end local v2           #btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    .end local v4           #ll:Landroid/widget/LinearLayout;
    :cond_a
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->setSavedFlag2False()V

    goto/16 :goto_0

    .line 1010
    :cond_b
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f090041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    goto/16 :goto_1

    .line 1032
    .restart local v2       #btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    .restart local v4       #ll:Landroid/widget/LinearLayout;
    :cond_c
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1058
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "first add exccedd totoal width>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 1061
    .end local v2           #btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    .end local v4           #ll:Landroid/widget/LinearLayout;
    :cond_e
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mPartFactory:Landroid/view/LayoutInflater;

    const v9, 0x7f030035

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1063
    .restart local v4       #ll:Landroid/widget/LinearLayout;
    iget v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToLines:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    .line 1064
    const v8, 0x7f0d00fc

    invoke-virtual {p0, v8}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    .line 1069
    :cond_f
    const v8, 0x7f0d00ef

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/widget/HtcPhotoButton;

    .line 1070
    .restart local v2       #btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    const-wide/16 v8, -0x1

    cmp-long v8, p3, v8

    if-nez v8, :cond_11

    .line 1071
    const v8, 0x7f02008c

    invoke-virtual {v2, v8}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageResource(I)V

    .line 1077
    :goto_4
    invoke-virtual {v2, v3}, Lcom/htc/calendar/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mShowRecipientDialog:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v8}, Lcom/htc/calendar/widget/HtcPhotoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    invoke-direct {p0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->getBtnWidth(Lcom/htc/calendar/widget/HtcPhotoButton;)I

    move-result v8

    iput v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    .line 1083
    if-nez p10, :cond_10

    .line 1084
    iget v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    invoke-virtual {v2, v8}, Lcom/htc/calendar/widget/HtcPhotoButton;->setWidth(I)V

    .line 1087
    :cond_10
    iput-object v4, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mView:Landroid/view/View;

    .line 1088
    const/4 v8, 0x1

    iput v8, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->group:I

    .line 1089
    iput-wide p3, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    .line 1090
    invoke-virtual {v2, v5}, Lcom/htc/calendar/widget/HtcPhotoButton;->setTag(Ljava/lang/Object;)V

    .line 1094
    iget v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    iget v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    if-gt v8, v9, :cond_12

    .line 1095
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1096
    iget v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    iget v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    goto/16 :goto_3

    .line 1073
    :cond_11
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 1099
    :cond_12
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    .line 1100
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1101
    const v8, 0x7f0d00fd

    invoke-virtual {p0, v8}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1102
    iget v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    iput v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    .line 1103
    iget v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToLines:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToLines:I

    goto/16 :goto_3
.end method

.method private setMailSapphireUI(I)V
    .locals 16
    .parameter "which"

    .prologue
    .line 505
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setMailSapphireUI > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 511
    const/4 v7, 0x0

    .line 514
    .local v7, onlyOne:Z
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 515
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    if-nez v12, :cond_1

    .line 516
    const-string v12, "addrList null return>"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v7, 0x1

    .line 523
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v5, lAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    new-instance v1, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    .line 527
    .local v1, addr:Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_6

    .line 528
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    .line 529
    .local v8, receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    iget-boolean v12, v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->removed:Z

    if-eqz v12, :cond_3

    .line 527
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 522
    .end local v1           #addr:Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;
    .end local v4           #i:I
    .end local v5           #lAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    .end local v8           #receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 532
    .restart local v1       #addr:Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;
    .restart local v4       #i:I
    .restart local v5       #lAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    .restart local v8       #receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    :cond_3
    iget-object v12, v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 533
    .local v11, v:Landroid/widget/LinearLayout;
    if-eqz v11, :cond_4

    .line 534
    iget-object v12, v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 539
    :cond_4
    new-instance v1, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;

    .end local v1           #addr:Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;
    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    .line 540
    .restart local v1       #addr:Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;
    iget-object v12, v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 541
    const-string v12, ""

    iput-object v12, v1, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 545
    :goto_4
    iget-object v12, v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    iput-object v12, v1, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mEmail:Ljava/lang/String;

    .line 546
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 543
    :cond_5
    iget-object v12, v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    iput-object v12, v1, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mDisplayName:Ljava/lang/String;

    goto :goto_4

    .line 549
    .end local v8           #receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    .end local v11           #v:Landroid/widget/LinearLayout;
    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    .line 550
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " UI wToNow>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 551
    const v12, 0x7f0d00fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    .line 552
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_c

    .line 553
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    .line 554
    .restart local v8       #receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    iget-boolean v12, v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->removed:Z

    if-eqz v12, :cond_7

    .line 552
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 557
    :cond_7
    iget-object v3, v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    .line 558
    .local v3, dispName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 559
    iget-object v3, v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    .line 561
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mPartFactory:Landroid/view/LayoutInflater;

    const v13, 0x7f030035

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 566
    .local v6, la:Landroid/widget/LinearLayout;
    const v12, 0x7f0d00ef

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/widget/HtcPhotoButton;

    .line 567
    .local v2, btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    iget-wide v12, v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_a

    .line 568
    const v12, 0x7f02008c

    invoke-virtual {v2, v12}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageResource(I)V

    .line 574
    :goto_7
    invoke-virtual {v2, v3}, Lcom/htc/calendar/widget/HtcPhotoButton;->setText(Ljava/lang/CharSequence;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mShowRecipientDialog:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v12}, Lcom/htc/calendar/widget/HtcPhotoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    invoke-virtual {v2, v8}, Lcom/htc/calendar/widget/HtcPhotoButton;->setTag(Ljava/lang/Object;)V

    .line 580
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->getBtnWidth(Lcom/htc/calendar/widget/HtcPhotoButton;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    .line 584
    if-nez v7, :cond_9

    .line 585
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    invoke-virtual {v2, v12}, Lcom/htc/calendar/widget/HtcPhotoButton;->setWidth(I)V

    .line 589
    :cond_9
    iput-object v6, v8, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mView:Landroid/view/View;

    .line 590
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    if-gt v12, v13, :cond_b

    .line 591
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 592
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    goto :goto_6

    .line 570
    :cond_a
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 595
    :cond_b
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    .line 596
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 597
    const v12, 0x7f0d00fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 599
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    .line 600
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->wToLines:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->wToLines:I

    .line 601
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UI to add 2>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 607
    .end local v2           #btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    .end local v3           #dispName:Ljava/lang/String;
    .end local v6           #la:Landroid/widget/LinearLayout;
    .end local v8           #receiver:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    :cond_c
    const/4 v10, 0x0

    .line 608
    .local v10, tocc_:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/calendar/widget/ComposeTitle;->mToAddress:Ljava/util/ArrayList;

    .line 609
    new-instance v9, Ljava/lang/Thread;

    new-instance v12, Lcom/htc/calendar/widget/ComposeTitle$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/htc/calendar/widget/ComposeTitle$3;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    invoke-direct {v9, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 618
    .local v9, thread:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 619
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method private setMailSapphireWithMultiEmail(Ljava/lang/String;)V
    .locals 14
    .parameter "multiEmail"

    .prologue
    const/4 v10, 0x1

    const-wide/16 v3, -0x1

    const/4 v9, 0x0

    .line 1125
    const-string v0, ";"

    const-string v1, ","

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1126
    .local v11, cleanAddr:Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1130
    .local v12, cleanArray:[Ljava/lang/String;
    array-length v0, v12

    if-ne v0, v10, :cond_0

    .line 1132
    .local v10, onlyOne:Z
    :goto_0
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    array-length v0, v12

    if-ge v13, v0, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDataHandler:Lcom/htc/calendar/widget/ComposeTitle$DataHandler;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDataHandler:Lcom/htc/calendar/widget/ComposeTitle$DataHandler;

    const/16 v2, 0x100

    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->getModeToCcBcc()I

    move-result v5

    aget-object v6, v12, v13

    invoke-virtual {v1, v2, v5, v9, v6}, Lcom/htc/calendar/widget/ComposeTitle$DataHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle$DataHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1135
    aget-object v1, v12, v13

    const/4 v2, 0x0

    move-object v0, p0

    move-wide v5, v3

    move-wide v7, v3

    invoke-direct/range {v0 .. v10}, Lcom/htc/calendar/widget/ComposeTitle;->setMailSapphire(Ljava/lang/String;Ljava/lang/String;JJJZZ)V

    .line 1132
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v10           #onlyOne:Z
    .end local v13           #i:I
    :cond_0
    move v10, v9

    .line 1130
    goto :goto_0

    .line 1144
    .restart local v10       #onlyOne:Z
    .restart local v13       #i:I
    :cond_1
    return-void
.end method

.method private setMultiMailSapphire(Ljava/lang/String;)V
    .locals 13
    .parameter "multiAddr"

    .prologue
    const/4 v10, 0x1

    const-wide/16 v3, -0x1

    const/4 v9, 0x0

    .line 1478
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1498
    :cond_0
    return-void

    .line 1481
    :cond_1
    invoke-virtual {p0, p1, v9}, Lcom/htc/calendar/widget/ComposeTitle;->splitMailAddress(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v12

    .line 1484
    .local v12, mAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 1486
    .local v10, onlyOne:Z
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1487
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDataHandler:Lcom/htc/calendar/widget/ComposeTitle$DataHandler;

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDataHandler:Lcom/htc/calendar/widget/ComposeTitle$DataHandler;

    const/16 v5, 0x100

    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->getModeToCcBcc()I

    move-result v6

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;

    iget-object v0, v0, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v9, v0}, Lcom/htc/calendar/widget/ComposeTitle$DataHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/calendar/widget/ComposeTitle$DataHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1489
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mEmail:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v0, p0

    move-wide v5, v3

    move-wide v7, v3

    invoke-direct/range {v0 .. v10}, Lcom/htc/calendar/widget/ComposeTitle;->setMailSapphire(Ljava/lang/String;Ljava/lang/String;JJJZZ)V

    .line 1487
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v10           #onlyOne:Z
    .end local v11           #i:I
    :cond_2
    move v10, v9

    .line 1484
    goto :goto_0
.end method

.method private setPickerBtn(IILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "LAYOUT_ID"
    .parameter "IMAGE_ID"
    .parameter "l"

    .prologue
    .line 1621
    invoke-virtual {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1622
    .local v0, ib:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 1623
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1624
    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1626
    :cond_0
    return-void
.end method

.method private setSavedFlag2False()V
    .locals 1

    .prologue
    .line 1150
    iget-boolean v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mbOnCreating:Z

    if-nez v0, :cond_0

    .line 1151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mIsSaved:Z

    .line 1153
    :cond_0
    return-void
.end method

.method private showAutoCompleteButton(Landroid/widget/IMEAutoCompleteTextView;I)V
    .locals 18
    .parameter "textView"
    .parameter "position"

    .prologue
    .line 1276
    const-string v2, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/IMEAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1277
    invoke-virtual/range {p1 .. p1}, Landroid/widget/IMEAutoCompleteTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mSelectView:Landroid/widget/LinearLayout;

    .line 1278
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/widget/ComposeTitle;->mLastView:Landroid/view/View;

    .line 1279
    const/16 v17, 0x0

    .line 1280
    .local v17, nCount:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/widget/ComposeTitle;->isEmailType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1281
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->doShowHintList_Email(I)I

    move-result v17

    .line 1287
    :goto_0
    const/4 v13, -0x1

    .line 1288
    .local v13, click_ContactId:I
    const/4 v15, -0x1

    .line 1289
    .local v15, click_RowContactId:I
    const/4 v14, -0x1

    .line 1291
    .local v14, click_MethodId:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mClickMethodId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mClickContactId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mClickRawContactId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 1299
    :goto_1
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_1

    const/4 v12, 0x1

    .line 1302
    .local v12, onlyOne:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/widget/ComposeTitle;->mClickAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;

    int-to-long v5, v13

    int-to-long v7, v15

    int-to-long v9, v14

    const/4 v11, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/htc/calendar/widget/ComposeTitle;->setMailSapphire(Ljava/lang/String;Ljava/lang/String;JJJZZ)V

    .line 1310
    return-void

    .line 1283
    .end local v12           #onlyOne:Z
    .end local v13           #click_ContactId:I
    .end local v14           #click_MethodId:I
    .end local v15           #click_RowContactId:I
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->doShowHistList_Facebook(I)I

    move-result v17

    goto :goto_0

    .line 1294
    .restart local v13       #click_ContactId:I
    .restart local v14       #click_MethodId:I
    .restart local v15       #click_RowContactId:I
    :catch_0
    move-exception v16

    .line 1295
    .local v16, e:Ljava/lang/NumberFormatException;
    const-string v2, "ComposeTitle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/ComposeTitle;->mClickMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/ComposeTitle;->mClickContactId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1299
    .end local v16           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private showDlg_Recipient(IZ)V
    .locals 8
    .parameter "id"
    .parameter "needConfirm"

    .prologue
    .line 666
    const/4 v2, 0x0

    .line 667
    .local v2, receiverList:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget v4, v4, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->group:I

    packed-switch v4, :pswitch_data_0

    .line 679
    :cond_0
    if-nez v2, :cond_1

    .line 700
    :goto_0
    return-void

    .line 669
    :pswitch_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 670
    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #receiverList:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    check-cast v2, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    .line 671
    .restart local v2       #receiverList:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    iget-wide v4, v2, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mId:J

    iget-object v6, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-wide v6, v6, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 669
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 683
    .end local v1           #i:I
    :cond_1
    iget-object v4, v2, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 684
    iget-object v3, v2, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->name:Ljava/lang/String;

    .line 688
    .local v3, str:Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_3

    .line 689
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 690
    .local v0, dlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 692
    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f08005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 693
    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 694
    const v4, 0x104000a

    iget-object v5, p0, Lcom/htc/calendar/widget/ComposeTitle;->mConfirmRemoveRecipientEvent:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 695
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 696
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 686
    .end local v0           #dlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v3           #str:Ljava/lang/String;
    :cond_2
    iget-object v3, v2, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;

    .restart local v3       #str:Ljava/lang/String;
    goto :goto_2

    .line 698
    :cond_3
    iget-object v4, p0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    invoke-direct {p0, v4}, Lcom/htc/calendar/widget/ComposeTitle;->removeAddedContact(Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;)V

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private showRecipientMenu()V
    .locals 3

    .prologue
    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    new-instance v2, Lcom/htc/calendar/widget/ComposeTitle$4;

    invoke-direct {v2, p0}, Lcom/htc/calendar/widget/ComposeTitle$4;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :goto_0
    return-void

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ComposeTitle"

    const-string v2, "showRecipientMenu() exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateEachContact(Lcom/htc/calendar/widget/HtcPhotoButton;Ljava/lang/Object;I)V
    .locals 6
    .parameter "btn"
    .parameter "tag"
    .parameter "mode"

    .prologue
    .line 2581
    move-object v4, p2

    .line 2582
    .local v4, tag_:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2583
    .local v1, address:Ljava/lang/String;
    const/4 v2, -0x1

    .line 2586
    .local v2, contactId:I
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/calendar/widget/HtcPhotoButton;->getTag()Ljava/lang/Object;

    move-result-object p2

    .line 2587
    if-eqz p2, :cond_0

    .line 2588
    move-object v0, p2

    check-cast v0, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    move-object v5, v0

    iget-object v1, v5, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2594
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->isEmailType()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2595
    if-eqz v1, :cond_1

    .line 2596
    invoke-direct {p0, p3, v1}, Lcom/htc/calendar/widget/ComposeTitle;->getContactIdByEmailAddress(ILjava/lang/String;)I

    move-result v2

    .line 2597
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 2598
    const v5, 0x7f02008c

    invoke-virtual {p1, v5}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageResource(I)V

    .line 2604
    :cond_1
    :goto_1
    return-void

    .line 2590
    :catch_0
    move-exception v3

    .line 2591
    .local v3, e:Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    goto :goto_0

    .line 2600
    .end local v3           #e:Ljava/lang/ClassCastException;
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateSpecifiedContact(Lcom/htc/calendar/widget/HtcPhotoButton;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .parameter "btn"
    .parameter "tag"
    .parameter "contact"

    .prologue
    .line 2632
    move-object v4, p2

    .line 2633
    .local v4, tag_:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 2634
    .local v1, address:Ljava/lang/String;
    const/4 v2, -0x1

    .line 2637
    .local v2, contactId:I
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/calendar/widget/HtcPhotoButton;->getTag()Ljava/lang/Object;

    move-result-object p2

    .line 2638
    if-eqz p2, :cond_0

    .line 2639
    move-object v0, p2

    check-cast v0, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    move-object v6, v0

    iget-object v1, v6, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->addr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2644
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    move-object v5, p3

    .line 2645
    check-cast v5, Lcom/htc/calendar/widget/ComposeTitle$ContactObj;

    .line 2646
    .local v5, targetContact:Lcom/htc/calendar/widget/ComposeTitle$ContactObj;
    iget-object v6, v5, Lcom/htc/calendar/widget/ComposeTitle$ContactObj;->address:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2647
    iget v6, v5, Lcom/htc/calendar/widget/ComposeTitle$ContactObj;->contact_id:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 2648
    const v6, 0x7f02008c

    invoke-virtual {p1, v6}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageResource(I)V

    .line 2654
    .end local v5           #targetContact:Lcom/htc/calendar/widget/ComposeTitle$ContactObj;
    :cond_1
    :goto_1
    return-void

    .line 2641
    :catch_0
    move-exception v3

    .line 2642
    .local v3, e:Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    goto :goto_0

    .line 2650
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v5       #targetContact:Lcom/htc/calendar/widget/ComposeTitle$ContactObj;
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/htc/calendar/widget/HtcPhotoButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateToContacts(IIZLjava/lang/Object;)V
    .locals 9
    .parameter "id"
    .parameter "mode"
    .parameter "record"
    .parameter "obj"

    .prologue
    .line 2657
    const/4 v1, 0x0

    .line 2658
    .local v1, count:I
    const/4 v2, 0x0

    .line 2660
    .local v2, count2:I
    invoke-virtual {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 2662
    .local v6, toList:Landroid/widget/LinearLayout;
    if-eqz v6, :cond_2

    .line 2663
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2664
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 2665
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 2666
    .local v5, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 2667
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 2668
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0d00ef

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/widget/HtcPhotoButton;

    .line 2670
    .local v0, btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    if-nez p3, :cond_0

    .line 2671
    invoke-virtual {v0}, Lcom/htc/calendar/widget/HtcPhotoButton;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v0, v7, p2}, Lcom/htc/calendar/widget/ComposeTitle;->updateEachContact(Lcom/htc/calendar/widget/HtcPhotoButton;Ljava/lang/Object;I)V

    .line 2667
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2673
    :cond_0
    invoke-virtual {v0}, Lcom/htc/calendar/widget/HtcPhotoButton;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v0, v7, p4}, Lcom/htc/calendar/widget/ComposeTitle;->updateSpecifiedContact(Lcom/htc/calendar/widget/HtcPhotoButton;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 2664
    .end local v0           #btn:Lcom/htc/calendar/widget/HtcPhotoButton;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2678
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #ll:Landroid/widget/LinearLayout;
    :cond_2
    return-void
.end method


# virtual methods
.method public clearAllReceiverItems()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3150
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 3151
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3152
    iput-object v6, p0, Lcom/htc/calendar/widget/ComposeTitle;->mBtnListView:Landroid/widget/LinearLayout;

    .line 3156
    :cond_0
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 3157
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 3158
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    .line 3159
    .local v1, item:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    iget-object v3, v1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 3160
    .local v2, v:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_1

    .line 3161
    iget-object v3, v1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 3164
    .end local v1           #item:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;
    .end local v2           #v:Landroid/widget/LinearLayout;
    :cond_2
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3166
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 3167
    const v3, 0x7f0d00fa

    invoke-virtual {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 3170
    :cond_4
    iput-object v6, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    .line 3193
    :cond_5
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->clearData(Ljava/util/ArrayList;)V

    .line 3194
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->clearData(Ljava/util/ArrayList;)V

    .line 3195
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->clearData(Ljava/util/ArrayList;)V

    .line 3197
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->clearData(Ljava/util/ArrayList;)V

    .line 3198
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->clearData(Ljava/util/ArrayList;)V

    .line 3199
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->clearData(Ljava/util/ArrayList;)V

    .line 3200
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mRowContactIdList2:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->clearData(Ljava/util/ArrayList;)V

    .line 3201
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mMethodIdList2:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->clearData(Ljava/util/ArrayList;)V

    .line 3203
    iput v5, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    .line 3204
    iput v5, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToNow:I

    .line 3205
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToLines:I

    .line 3206
    iput v5, p0, Lcom/htc/calendar/widget/ComposeTitle;->mWidth:I

    .line 3208
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mLL_ReceiverList:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mSelectView:Landroid/widget/LinearLayout;

    .line 3211
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/IMEAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3212
    return-void
.end method

.method public getAttendeesList(Z)Ljava/lang/String;
    .locals 3
    .parameter "bEx"

    .prologue
    const/4 v1, 0x0

    .line 1979
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->checkInputBox()V

    .line 1981
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAddedReceiverList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mTitleType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/htc/calendar/widget/ComposeTitle;->getAddrListString(Ljava/util/List;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getContactId(Ljava/lang/String;)I
    .locals 11
    .parameter "addr"

    .prologue
    const/4 v10, 0x1

    .line 2530
    const/4 v8, -0x1

    .line 2531
    .local v8, contactId:I
    const-string v3, "data1 LIKE ?"

    .line 2533
    .local v3, where:Ljava/lang/String;
    if-nez p1, :cond_0

    move v0, v8

    .line 2567
    :goto_0
    return v0

    .line 2537
    :cond_0
    const/4 v7, 0x0

    .line 2539
    .local v7, contactCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/calendar/widget/ComposeTitle;->MAIL_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2548
    :goto_1
    if-nez v7, :cond_1

    .line 2549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContactId cursor null>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2550
    const/4 v0, -0x1

    goto :goto_0

    .line 2544
    :catch_0
    move-exception v9

    .line 2545
    .local v9, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_1

    .line 2553
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v10, :cond_2

    .line 2554
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2555
    const-string v0, "contact_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2558
    .local v6, _Id:Ljava/lang/String;
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 2563
    .end local v6           #_Id:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2564
    const/4 v8, -0x1

    .line 2566
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 2567
    goto :goto_0

    .line 2559
    .restart local v6       #_Id:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 2560
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v0, "NumberFormatException occurs in getContactId()"

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getContactInfo(Ljava/lang/String;I)V
    .locals 5
    .parameter "addr"
    .parameter "tocc"

    .prologue
    .line 2708
    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$ContactObj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/widget/ComposeTitle$ContactObj;-><init>(Lcom/htc/calendar/widget/ComposeTitle;Lcom/htc/calendar/widget/ComposeTitle$1;)V

    .line 2709
    .local v0, contact:Lcom/htc/calendar/widget/ComposeTitle$ContactObj;
    iput-object p1, v0, Lcom/htc/calendar/widget/ComposeTitle$ContactObj;->address:Ljava/lang/String;

    .line 2710
    invoke-virtual {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->getContactId(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/calendar/widget/ComposeTitle$ContactObj;->contact_id:I

    .line 2711
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2712
    return-void
.end method

.method public getContacts(I)V
    .locals 18
    .parameter "mode"

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mIsSaved:Z

    if-eqz v2, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    const/4 v9, 0x0

    .line 421
    .local v9, address:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    packed-switch p1, :pswitch_data_0

    .line 428
    :goto_1
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    const/4 v10, -0x1

    .line 433
    .local v10, contactId:I
    const-string v5, "lower(data1) IN ("

    .line 435
    .local v5, selection:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 436
    .local v17, size:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 437
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;

    iget-object v14, v2, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mEmail:Ljava/lang/String;

    .line 438
    .local v14, email:Ljava/lang/String;
    if-nez v14, :cond_3

    .line 436
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 423
    .end local v5           #selection:Ljava/lang/String;
    .end local v10           #contactId:I
    .end local v14           #email:Ljava/lang/String;
    .end local v15           #i:I
    .end local v17           #size:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mToAddress:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mToAddress:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #address:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    check-cast v9, Ljava/util/ArrayList;

    .restart local v9       #address:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    goto :goto_1

    .line 441
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v10       #contactId:I
    .restart local v14       #email:Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v17       #size:I
    :cond_3
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 444
    add-int/lit8 v2, v17, -0x1

    if-eq v15, v2, :cond_2

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 449
    .end local v14           #email:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 453
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/calendar/widget/ComposeTitle;->MAIL_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 460
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_8

    .line 461
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 462
    const/16 v16, -0x1

    .line 464
    .local v16, id:I
    :cond_5
    const-string v2, "data1"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 465
    .local v12, data:Ljava/lang/String;
    const-string v2, "contact_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 468
    .local v8, _Id:Ljava/lang/String;
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    .line 473
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/htc/calendar/widget/ComposeTitle;->getMailAddress(ILjava/lang/String;)I

    move-result v16

    .line 474
    if-ltz v16, :cond_7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mIsSaved:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mDoLeaveGetContactThread:Z

    if-nez v2, :cond_7

    .line 476
    :cond_6
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;

    iput v10, v2, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mContactId:I

    .line 479
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mIsSaved:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mDoLeaveGetContactThread:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_c

    .line 485
    .end local v8           #_Id:Ljava/lang/String;
    .end local v12           #data:Ljava/lang/String;
    .end local v16           #id:I
    :cond_8
    :goto_5
    if-eqz v11, :cond_9

    .line 486
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 488
    :cond_9
    const/4 v11, 0x0

    .line 490
    packed-switch p1, :pswitch_data_1

    .line 496
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mIsSaved:Z

    if-nez v2, :cond_0

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/widget/ComposeTitle;->mUIHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    const/4 v6, 0x0

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 454
    .end local v11           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 455
    .local v13, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 456
    .restart local v11       #cursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 469
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v8       #_Id:Ljava/lang/String;
    .restart local v12       #data:Ljava/lang/String;
    .restart local v16       #id:I
    :catch_1
    move-exception v13

    .line 470
    .local v13, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v2, "NumberFormatException occurs in getContactId()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 485
    .end local v8           #_Id:Ljava/lang/String;
    .end local v12           #data:Ljava/lang/String;
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .end local v16           #id:I
    :catchall_0
    move-exception v2

    move-object v3, v2

    if-eqz v11, :cond_a

    .line 486
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 488
    :cond_a
    const/4 v11, 0x0

    .line 490
    packed-switch p1, :pswitch_data_2

    .line 496
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mIsSaved:Z

    if-nez v2, :cond_b

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/ComposeTitle;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    const/4 v7, 0x0

    move/from16 v0, p1

    invoke-virtual {v4, v6, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_b
    throw v3

    .line 482
    .restart local v8       #_Id:Ljava/lang/String;
    .restart local v12       #data:Ljava/lang/String;
    .restart local v16       #id:I
    :cond_c
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    goto :goto_5

    .line 492
    .end local v8           #_Id:Ljava/lang/String;
    .end local v12           #data:Ljava/lang/String;
    .end local v16           #id:I
    :pswitch_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mToAddress:Ljava/util/ArrayList;

    goto :goto_6

    :pswitch_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mToAddress:Ljava/util/ArrayList;

    goto :goto_7

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 490
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method inputHtcContactList(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 3097
    const-string v1, "ComposeTitle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProcessingDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mProcessingInputContactNow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingInputContactNow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 3099
    iget-boolean v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mProcessingInputContactNow:Z

    if-eqz v1, :cond_1

    .line 3117
    :cond_0
    :goto_0
    return-void

    .line 3102
    :cond_1
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->openProcessDialog()V

    .line 3104
    move v0, p1

    .line 3106
    .local v0, fType:I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/calendar/widget/ComposeTitle$14;

    invoke-direct {v2, p0, v0}, Lcom/htc/calendar/widget/ComposeTitle$14;-><init>(Lcom/htc/calendar/widget/ComposeTitle;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method inputHtcContactList_Facebook()V
    .locals 19

    .prologue
    .line 2766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;

    .line 2767
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;

    .line 2768
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;

    .line 2769
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mRowContactIdList2:Ljava/util/ArrayList;

    .line 2770
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mMethodIdList2:Ljava/util/ArrayList;

    .line 2772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 2773
    const-string v1, "ComposeTitle"

    const-string v2, "mPeople is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2775
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    .line 2777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 2778
    .local v17, sourceIDList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2779
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2781
    .local v9, count:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sourceid IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2782
    .local v4, selection:Ljava/lang/String;
    const/4 v12, 0x1

    .local v12, i:I
    :goto_0
    if-ge v12, v9, :cond_0

    .line 2783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2782
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2786
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb-source_id-selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2789
    const/4 v10, 0x0

    .line 2790
    .local v10, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/calendar/widget/ComposeTitle;->FACEBOOK_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/calendar/widget/ComposeTitle;->FACEBOOK_PROJECT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2792
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2793
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 2794
    .local v14, nCnt:I
    const-string v1, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb-mPeople_null-cursor.count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2797
    const/4 v13, 0x0

    .local v13, index:I
    :goto_1
    if-ge v13, v14, :cond_1

    .line 2798
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2799
    .local v15, row_contact_id:J
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2800
    .local v11, display_name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2801
    .local v18, source_id:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2802
    .local v7, contact_id:J
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 2804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mRowContactIdList2:Ljava/util/ArrayList;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2806
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2809
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "FB--> row_contact_id:%d source_id: %s display_name:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v18, v3, v5

    const/4 v5, 0x2

    aput-object v11, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2797
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2817
    .end local v7           #contact_id:J
    .end local v11           #display_name:Ljava/lang/String;
    .end local v13           #index:I
    .end local v14           #nCnt:I
    .end local v15           #row_contact_id:J
    .end local v18           #source_id:Ljava/lang/String;
    :cond_1
    if-eqz v10, :cond_2

    .line 2818
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/calendar/widget/ComposeTitle;->closeCursor(Landroid/database/Cursor;)V

    .line 2869
    .end local v4           #selection:Ljava/lang/String;
    .end local v9           #count:I
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #i:I
    .end local v17           #sourceIDList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    const-string v1, "Starting set up ui..."

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2870
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    new-instance v2, Lcom/htc/calendar/widget/ComposeTitle$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/calendar/widget/ComposeTitle$11;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2922
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    .line 2924
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/widget/ComposeTitle;->closeProcessDialog()V

    .line 2925
    return-void

    .line 2821
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 2822
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2824
    .restart local v9       #count:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " contact_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2825
    .restart local v4       #selection:Ljava/lang/String;
    const/4 v13, 0x1

    .restart local v13       #index:I
    :goto_3
    if-ge v13, v9, :cond_4

    .line 2826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2825
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2829
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND account_type=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb-contact_id-selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2832
    const/4 v10, 0x0

    .line 2833
    .restart local v10       #cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/calendar/widget/ComposeTitle;->FACEBOOK_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/calendar/widget/ComposeTitle;->FACEBOOK_PROJECT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2841
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2842
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 2843
    .restart local v14       #nCnt:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb-mPeople_not_null-cursor.count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2845
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v14, :cond_5

    .line 2846
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2847
    .restart local v15       #row_contact_id:J
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2848
    .restart local v11       #display_name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2849
    .restart local v18       #source_id:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2850
    .restart local v7       #contact_id:J
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 2852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mContactIdList2:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2853
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mRowContactIdList2:Ljava/util/ArrayList;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2854
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mDispalyNameList2:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2855
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList2:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2857
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "FB--> row_contact_id:%d source_id: %s display_name:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v18, v3, v5

    const/4 v5, 0x2

    aput-object v11, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V

    .line 2845
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2864
    .end local v7           #contact_id:J
    .end local v11           #display_name:Ljava/lang/String;
    .end local v14           #nCnt:I
    .end local v15           #row_contact_id:J
    .end local v18           #source_id:Ljava/lang/String;
    :cond_5
    if-eqz v10, :cond_2

    .line 2865
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/calendar/widget/ComposeTitle;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_2
.end method

.method insertContactTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "name"
    .parameter "addr"

    .prologue
    const/4 v10, 0x1

    .line 1502
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1503
    .local v7, pCV:Landroid/content/ContentValues;
    const-string v8, "name"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1505
    .local v6, newContactUri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 1506
    .local v5, idStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v5}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 1507
    .local v4, id1:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1509
    .local v2, id:J
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1510
    .local v0, builder:Landroid/net/Uri$Builder;
    sget-object v8, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1511
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1512
    .local v1, cv:Landroid/content/ContentValues;
    const-string v8, "data"

    invoke-virtual {v1, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const-string v8, "type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1514
    const-string v8, "kind"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1515
    const-string v8, "person"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1516
    iget-object v8, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1517
    return-void
.end method

.method public onActivityResult_FacebookID(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1668
    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    .line 1669
    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    .line 1670
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    .line 1672
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->debugResultFacebook(Ljava/util/ArrayList;)V

    .line 1673
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->inputHtcContactList(I)V

    .line 1674
    return-void
.end method

.method public onActivityResult_Mail(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1659
    .local p1, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, midList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    .line 1660
    iput-object p2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    .line 1661
    iput-object p3, p0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    .line 1663
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mPeople:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/calendar/widget/ComposeTitle;->debugResultMail(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1664
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->inputHtcContactList(I)V

    .line 1665
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 3120
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3121
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    .line 3125
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/calendar/widget/ComposeTitle;->setMailSapphireUI(I)V

    .line 3126
    return-void

    .line 3123
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->wToAll:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 3327
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->closeProcessDialog()V

    .line 3328
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 1733
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 1734
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 3239
    invoke-direct {p0}, Lcom/htc/calendar/widget/ComposeTitle;->checkEachReceiverItem()V

    .line 3240
    return-void
.end method

.method public pickExistedContactor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "addr"

    .prologue
    .line 760
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 761
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const-string v1, "email"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 765
    return-void
.end method

.method public setAccountInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "acntName"
    .parameter "acntType"

    .prologue
    .line 3138
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAccountName:Ljava/lang/String;

    .line 3139
    iput-object p2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mAccountType:Ljava/lang/String;

    .line 3140
    return-void
.end method

.method public setComposeTitleType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 3129
    iput p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mTitleType:I

    .line 3130
    iget v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mTitleType:I

    if-nez v0, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_email_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/IMEAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3135
    :goto_0
    return-void

    .line 3133
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mContacts_source_id_adapter:Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;

    invoke-virtual {v0, v1}, Landroid/widget/IMEAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setHostActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;

    .line 237
    return-void
.end method

.method public setInputList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1738
    .local p1, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1742
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1743
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1746
    :cond_1
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle;->mDisplayNameList:Ljava/util/ArrayList;

    .line 1747
    iput-object p2, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    .line 1749
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mEmailAddrList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle;->mSavedSourceIDList:Ljava/util/ArrayList;

    .line 1752
    invoke-virtual {p0, p3}, Lcom/htc/calendar/widget/ComposeTitle;->inputHtcContactList(I)V

    .line 1753
    return-void
.end method

.method public final splitMailAddress(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 12
    .parameter "value"
    .parameter "decodeIfNeed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 1431
    const/4 v0, 0x0

    .line 1432
    .local v0, charset:Ljava/lang/String;
    const-string v8, "ISO8859-1"

    .line 1434
    .local v8, orgCharset:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1435
    invoke-static {}, Lcom/htc/calendar/utils/ComposeTitleUtils;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    .line 1437
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1439
    .local v5, mAddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;>;"
    if-nez p1, :cond_2

    .line 1474
    :cond_1
    return-object v5

    .line 1442
    :cond_2
    invoke-static {}, Lcom/htc/calendar/utils/Regex;->getInstance()Lcom/htc/calendar/utils/Regex;

    move-result-object v9

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/htc/calendar/utils/Regex;->getPattern(I)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1443
    .local v1, m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1444
    new-instance v2, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;

    invoke-direct {v2, p0}, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    .line 1445
    .local v2, mAddr:Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;
    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1446
    .local v6, mDisplay:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 1447
    .local v3, mAddr1:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 1449
    .local v4, mAddr2:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1450
    iput-object v3, v2, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mEmail:Ljava/lang/String;

    .line 1455
    :goto_1
    if-nez v6, :cond_3

    .line 1456
    const-string v6, ""

    .line 1459
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1460
    .local v7, mUndecode:Ljava/lang/String;
    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1461
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1464
    :cond_4
    if-nez p2, :cond_6

    .line 1465
    iput-object v7, v2, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mDisplayName:Ljava/lang/String;

    .line 1472
    :goto_2
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1452
    .end local v7           #mUndecode:Ljava/lang/String;
    :cond_5
    iput-object v4, v2, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mEmail:Ljava/lang/String;

    goto :goto_1

    .line 1466
    .restart local v7       #mUndecode:Ljava/lang/String;
    :cond_6
    if-nez v8, :cond_7

    .line 1467
    invoke-static {v7, v0}, Lcom/htc/calendar/utils/ComposeTitleUtils;->rfc2047(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mDisplayName:Ljava/lang/String;

    goto :goto_2

    .line 1469
    :cond_7
    invoke-static {v7, v0, v8}, Lcom/htc/calendar/utils/ComposeTitleUtils;->rfc2047(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/htc/calendar/widget/ComposeTitle$Mailaddress;->mDisplayName:Ljava/lang/String;

    goto :goto_2
.end method
