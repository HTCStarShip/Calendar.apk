.class public Lcom/htc/calendar/AttendeesAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AttendeesAdapter.java"


# static fields
.field private static final ATTENDEES_INDEX_EMAIL:I = 0x2

.field private static final ATTENDEES_INDEX_EVENT_ID:I = 0x5

.field private static final ATTENDEES_INDEX_ID:I = 0x0

.field private static final ATTENDEES_INDEX_NAME:I = 0x1

.field private static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x3

.field private static final ATTENDEES_INDEX_STATUS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AttendeesAdapter"

.field public static idEmailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttendeesAccountType:Ljava/lang/String;

.field private mBackGroundHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field public viewCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/calendar/AttendeesAdapter;->idEmailMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 44
    invoke-static {}, Lcom/htc/calendar/CalendarCarouselActivity;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/AttendeesAdapter;->mBackGroundHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/AttendeesAdapter;->viewCache:Ljava/util/HashMap;

    .line 53
    iput-object p1, p0, Lcom/htc/calendar/AttendeesAdapter;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private getStatus(I)Ljava/lang/String;
    .locals 1
    .parameter "status"

    .prologue
    .line 140
    packed-switch p1, :pswitch_data_0

    .line 146
    const-string v0, " Tentative"

    :goto_0
    return-object v0

    .line 142
    :pswitch_0
    const-string v0, " Accepted"

    goto :goto_0

    .line 144
    :pswitch_1
    const-string v0, " Declined"

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 66
    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 67
    .local v5, eventId:J
    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 68
    .local v18, status:I
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 69
    .local v16, name:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 71
    .local v13, email:Ljava/lang/String;
    const-string v15, ""

    .line 73
    .local v15, label:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 74
    move-object/from16 v15, v16

    .line 78
    :cond_0
    :goto_0
    const v2, 0x7f0d002a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcListItem;

    .line 79
    .local v9, Listitem:Lcom/htc/widget/HtcListItem;
    const v2, -0xd0d0e

    invoke-virtual {v9, v2}, Lcom/htc/widget/HtcListItem;->setBackgroundColor(I)V

    .line 80
    const v2, 0x7f0d00c6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcListItem2LineText;

    .line 81
    .local v19, tv:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 82
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 83
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 84
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 85
    const v2, 0x7f0d002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 87
    .local v17, qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AttendeesAdapter;->mAttendeesAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/AttendeesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/htc/util/calendar/FacebookUtils;->getRawContactUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 89
    .local v12, contactUri:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 94
    .end local v12           #contactUri:Landroid/net/Uri;
    :goto_1
    const v8, 0x20800c2

    .line 95
    .local v8, defaultAvatarIconId:I
    const/4 v14, 0x0

    .line 98
    .local v14, isUseDefaultAvatarIcon:Z
    sget-object v2, Lcom/htc/calendar/AttendeesAdapter;->idEmailMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 99
    sget-object v2, Lcom/htc/calendar/AttendeesAdapter;->idEmailMap:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 100
    sget-object v2, Lcom/htc/calendar/AttendeesAdapter;->idEmailMap:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 101
    .local v11, contactId:I
    const-string v2, "AttendeesAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "email = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", conatctId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v0, v11

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 103
    .local v4, personUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AttendeesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/htc/calendar/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;JLjava/lang/String;I)V

    .line 115
    .end local v4           #personUri:Landroid/net/Uri;
    .end local v11           #contactId:I
    :goto_2
    if-eqz v14, :cond_1

    .line 116
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/htc/widget/QuickContactBadge;->setImageResource(I)V

    .line 120
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AttendeesAdapter;->viewCache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AttendeesAdapter;->mAttendeesAccountType:Ljava/lang/String;

    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    const v2, 0x7f0d00c9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItemImageButton;

    .line 123
    .local v10, attending:Lcom/htc/widget/HtcListItemImageButton;
    const-string v2, "AttendeesAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_7

    .line 125
    const v2, 0x7f02005c

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 137
    .end local v10           #attending:Lcom/htc/widget/HtcListItemImageButton;
    :cond_2
    :goto_3
    return-void

    .line 75
    .end local v8           #defaultAvatarIconId:I
    .end local v9           #Listitem:Lcom/htc/widget/HtcListItem;
    .end local v14           #isUseDefaultAvatarIcon:Z
    .end local v17           #qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;
    .end local v19           #tv:Lcom/htc/widget/HtcListItem2LineText;
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    move-object v15, v13

    goto/16 :goto_0

    .line 91
    .restart local v9       #Listitem:Lcom/htc/widget/HtcListItem;
    .restart local v17       #qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;
    .restart local v19       #tv:Lcom/htc/widget/HtcListItem2LineText;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v13, v3}, Lcom/htc/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 110
    .restart local v8       #defaultAvatarIconId:I
    .restart local v14       #isUseDefaultAvatarIcon:Z
    :cond_5
    const/4 v14, 0x1

    goto :goto_2

    .line 113
    :cond_6
    const/4 v14, 0x1

    goto :goto_2

    .line 127
    .restart local v10       #attending:Lcom/htc/widget/HtcListItemImageButton;
    :cond_7
    const/4 v2, 0x3

    move/from16 v0, v18

    if-ne v0, v2, :cond_8

    .line 128
    const v2, 0x7f02005a

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 129
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto :goto_3

    .line 130
    :cond_8
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ne v0, v2, :cond_9

    .line 131
    const v2, 0x7f02005b

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 132
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto :goto_3

    .line 134
    :cond_9
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto :goto_3
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/htc/calendar/AttendeesAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/AttendeesAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/htc/calendar/AttendeesAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/calendar/AttendeesAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 161
    iget-object v1, p0, Lcom/htc/calendar/AttendeesAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/calendar/AttendeesAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 164
    iget-object v0, p0, Lcom/htc/calendar/AttendeesAdapter;->mCursor:Landroid/database/Cursor;

    .line 165
    .local v0, tmp_cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/calendar/AttendeesAdapter;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/calendar/AttendeesAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/calendar/AttendeesAdapter$1;-><init>(Lcom/htc/calendar/AttendeesAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    .end local v0           #tmp_cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/AttendeesAdapter;->viewCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 174
    iput-object p1, p0, Lcom/htc/calendar/AttendeesAdapter;->mCursor:Landroid/database/Cursor;

    .line 175
    if-eqz p1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/htc/calendar/AttendeesAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 177
    iget-object v1, p0, Lcom/htc/calendar/AttendeesAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 178
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/calendar/AttendeesAdapter;->mRowIDColumn:I

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/calendar/AttendeesAdapter;->mDataValid:Z

    .line 181
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 183
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/calendar/AttendeesAdapter;->mRowIDColumn:I

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/calendar/AttendeesAdapter;->mDataValid:Z

    .line 186
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/widget/SimpleHtcListItemSeparable;

    const-string v2, "item"

    invoke-direct {v0, v2}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, htcItemTag:Lcom/htc/widget/SimpleHtcListItemSeparable;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    return-object v1
.end method

.method public setAttendeesAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/htc/calendar/AttendeesAdapter;->mAttendeesAccountType:Ljava/lang/String;

    .line 152
    return-void
.end method
