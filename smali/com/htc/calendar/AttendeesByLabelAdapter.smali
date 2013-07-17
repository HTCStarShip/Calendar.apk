.class public Lcom/htc/calendar/AttendeesByLabelAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttendeesByLabelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;,
        Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;,
        Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final PRESENCE_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AttendeesByLabel"

.field private static final TYPE_ATTENDEES:I = 0x1

.field private static final TYPE_LABEL:I = 0x0

.field private static final TYPE_LAST:I = 0x2


# instance fields
.field private DEBUG:Z

.field PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

.field PRESENCE_PROJECTION_EMAIL_INDEX:I

.field PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

.field PRESENCE_PROJECTION_PRESENCE_INDEX:I

.field private final mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

.field private mCntOfGetView:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mPresenceQueryHandler:Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCntMaybe:I

.field private mStatusCntNo:I

.field private mStatusCntYes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 312
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 319
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->PRESENCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/calendar/AttendeesAdapter;)V
    .locals 3
    .parameter "context"
    .parameter "attendeesAdapter"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntYes:I

    .line 45
    iput v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntMaybe:I

    .line 46
    iput v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntNo:I

    .line 48
    iput-boolean v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->DEBUG:Z

    .line 49
    iput v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mCntOfGetView:I

    .line 314
    iput v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

    .line 315
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->PRESENCE_PROJECTION_PRESENCE_INDEX:I

    .line 316
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->PRESENCE_PROJECTION_EMAIL_INDEX:I

    .line 317
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

    .line 59
    iput-object p1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 61
    iput-object p2, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    .line 62
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    new-instance v0, Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;

    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;-><init>(Lcom/htc/calendar/AttendeesByLabelAdapter;Landroid/content/Context;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mPresenceQueryHandler:Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/AttendeesByLabelAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/AttendeesByLabelAdapter;)Lcom/htc/calendar/AttendeesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    return-object v0
.end method


# virtual methods
.method public calculateAttendees(Landroid/database/Cursor;Z)V
    .locals 21
    .parameter "cursor"
    .parameter "attendeeMode"

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 223
    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v17, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 227
    .local v14, nCntOfCursor:I
    const-string v2, "AttendeesByLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nCntOfCursor:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v2, "data1 IN ("

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .local v19, selection:Ljava/lang/StringBuilder;
    new-array v4, v14, [Ljava/lang/String;

    .line 230
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 232
    const/16 v16, -0x1

    .line 237
    .local v16, prevStatus:I
    const/4 v15, 0x0

    .local v15, position:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 238
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 239
    .local v20, status:I
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 241
    .local v11, email:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    aput-object v11, v4, v15

    .line 245
    :cond_1
    if-nez v15, :cond_3

    .line 246
    const/16 v2, 0x3f

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    :goto_2
    packed-switch v20, :pswitch_data_0

    .line 259
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntMaybe:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntMaybe:I

    .line 263
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    .line 264
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    .line 265
    new-instance v2, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;

    const/4 v3, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-direct {v2, v3, v0, v1}, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;-><init>(IIZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :goto_4
    move/from16 v16, v20

    .line 271
    :cond_2
    new-instance v2, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;

    const/4 v3, 0x1

    move/from16 v0, p2

    invoke-direct {v2, v3, v15, v0}, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;-><init>(IIZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 248
    :cond_3
    const-string v2, ", ?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 253
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntYes:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntYes:I

    goto :goto_3

    .line 256
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntNo:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntNo:I

    goto :goto_3

    .line 267
    :cond_4
    new-instance v2, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;

    const/4 v3, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-direct {v2, v3, v0, v1}, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;-><init>(IIZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 273
    .end local v11           #email:Ljava/lang/String;
    .end local v20           #status:I
    :cond_5
    const/16 v2, 0x29

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    const-string v2, "AttendeesByLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  === selection ===: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    array-length v2, v4

    if-lez v2, :cond_6

    .line 277
    move-object v10, v4

    .local v10, arr$:[Ljava/lang/String;
    array-length v13, v10

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_5
    if-ge v12, v13, :cond_6

    aget-object v18, v10, v12

    .line 278
    .local v18, s:Ljava/lang/String;
    const-string v2, "AttendeesByLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " >> selectionArgs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 282
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v18           #s:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mPresenceQueryHandler:Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;

    const/4 v3, 0x0

    sget-object v5, Lcom/htc/calendar/AttendeesByLabelAdapter;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v6, Lcom/htc/calendar/AttendeesByLabelAdapter;->PRESENCE_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v8, v4

    invoke-virtual/range {v2 .. v9}, Lcom/htc/calendar/AttendeesByLabelAdapter$PresenceQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    invoke-virtual {v0}, Lcom/htc/calendar/AttendeesAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;

    .line 77
    .local v0, row:Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
    iget v1, v0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 83
    .end local v0           #row:Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 80
    .restart local v0       #row:Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    iget v2, v0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/htc/calendar/AttendeesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 83
    .end local v0           #row:Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/calendar/AttendeesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;

    .line 89
    .local v0, row:Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
    iget v1, v0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 90
    int-to-long v1, p1

    .line 95
    .end local v0           #row:Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
    :goto_0
    return-wide v1

    .line 92
    .restart local v0       #row:Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    iget v2, v0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/htc/calendar/AttendeesAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 95
    .end local v0           #row:Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/calendar/AttendeesAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;

    iget v0, v0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mType:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, p1

    if-le v0, v12, :cond_1

    .line 112
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2}, Lcom/htc/calendar/AttendeesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 212
    :goto_0
    return-object v10

    .line 115
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mCntOfGetView:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mCntOfGetView:I

    .line 116
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mCntOfGetView:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v12, v13, :cond_2

    .line 120
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;

    .line 121
    .local v7, row:Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
    iget v12, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mType:I

    if-nez v12, :cond_12

    .line 122
    const/4 v4, 0x0

    .line 123
    .local v4, holder:Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;
    const/4 v10, 0x0

    .line 125
    .local v10, statusLabelView:Landroid/view/View;
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 127
    .local v11, tag:Ljava/lang/Object;
    instance-of v12, v11, Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;

    if-eqz v12, :cond_3

    .line 128
    move-object/from16 v10, p2

    move-object v4, v11

    .line 129
    check-cast v4, Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;

    .line 133
    .end local v11           #tag:Ljava/lang/Object;
    :cond_3
    if-nez v4, :cond_4

    .line 134
    new-instance v4, Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;

    .end local v4           #holder:Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;
    invoke-direct {v4}, Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;-><init>()V

    .line 135
    .restart local v4       #holder:Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x2090056

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 136
    const v12, 0x2020020

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v4, Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;->labelView:Landroid/widget/TextView;

    .line 137
    iget-object v12, v4, Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;->labelView:Landroid/widget/TextView;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    iget-object v12, v4, Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;->labelView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mContext:Landroid/content/Context;

    const v14, 0x203002b

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 139
    const v12, 0x2020085

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 140
    .local v9, seperator:Landroid/widget/RelativeLayout;
    const/16 v12, 0x10

    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 141
    invoke-virtual {v10, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    .end local v9           #seperator:Landroid/widget/RelativeLayout;
    :cond_4
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 163
    :goto_1
    const-string v5, ""

    .line 166
    .local v5, label:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 167
    .local v6, res:Landroid/content/res/Resources;
    const v12, 0x7f06000c

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 178
    .local v3, entries:[Ljava/lang/CharSequence;
    iget v12, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mData:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 179
    const/4 v12, 0x0

    aget-object v8, v3, v12

    .line 180
    .local v8, sectionTitle:Ljava/lang/CharSequence;
    iget-boolean v12, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mAttendeesMode:Z

    if-eqz v12, :cond_a

    .line 181
    const v12, 0x7f080015

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 208
    .end local v8           #sectionTitle:Ljava/lang/CharSequence;
    :cond_5
    :goto_2
    iget-object v12, v4, Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 147
    .end local v3           #entries:[Ljava/lang/CharSequence;
    .end local v5           #label:Ljava/lang/String;
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_6
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableSkin()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 149
    if-nez p1, :cond_7

    .line 150
    const v12, 0x208066b

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 152
    :cond_7
    const v12, 0x208066a

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 156
    :cond_8
    if-nez p1, :cond_9

    .line 157
    const v12, 0x208066b

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 159
    :cond_9
    const v12, 0x208066a

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 183
    .restart local v3       #entries:[Ljava/lang/CharSequence;
    .restart local v5       #label:Ljava/lang/String;
    .restart local v6       #res:Landroid/content/res/Resources;
    .restart local v8       #sectionTitle:Ljava/lang/CharSequence;
    :cond_a
    const v12, 0x7f080076

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntYes:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v6, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 185
    .end local v8           #sectionTitle:Ljava/lang/CharSequence;
    :cond_b
    iget v12, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mData:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_d

    .line 186
    const/4 v12, 0x2

    aget-object v8, v3, v12

    .line 187
    .restart local v8       #sectionTitle:Ljava/lang/CharSequence;
    iget-boolean v12, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mAttendeesMode:Z

    if-eqz v12, :cond_c

    .line 188
    const v12, 0x7f080017

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 190
    :cond_c
    const v12, 0x7f080076

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntNo:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v6, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 192
    .end local v8           #sectionTitle:Ljava/lang/CharSequence;
    :cond_d
    iget v12, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mData:I

    const/4 v13, 0x4

    if-eq v12, v13, :cond_e

    iget v12, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mData:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_10

    .line 194
    :cond_e
    const/4 v12, 0x1

    aget-object v8, v3, v12

    .line 195
    .restart local v8       #sectionTitle:Ljava/lang/CharSequence;
    iget-boolean v12, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mAttendeesMode:Z

    if-eqz v12, :cond_f

    .line 196
    const v12, 0x7f080017

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 198
    :cond_f
    const v12, 0x7f080076

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntMaybe:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v6, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 200
    .end local v8           #sectionTitle:Ljava/lang/CharSequence;
    :cond_10
    iget v12, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mData:I

    if-nez v12, :cond_5

    .line 201
    const/4 v12, 0x1

    aget-object v8, v3, v12

    .line 202
    .restart local v8       #sectionTitle:Ljava/lang/CharSequence;
    iget-boolean v12, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mAttendeesMode:Z

    if-eqz v12, :cond_11

    .line 203
    const v12, 0x7f080017

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 205
    :cond_11
    const v12, 0x7f080076

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mStatusCntMaybe:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v6, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 211
    .end local v3           #entries:[Ljava/lang/CharSequence;
    .end local v4           #holder:Lcom/htc/calendar/AttendeesByLabelAdapter$ViewHolder;
    .end local v5           #label:Ljava/lang/String;
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v8           #sectionTitle:Ljava/lang/CharSequence;
    .end local v10           #statusLabelView:Landroid/view/View;
    :cond_12
    iget v12, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mAttendeesAdapter:Lcom/htc/calendar/AttendeesAdapter;

    iget v13, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mData:I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v13, v0, v1}, Lcom/htc/calendar/AttendeesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    goto/16 :goto_0

    .line 215
    :cond_13
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown event type:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 302
    iget-object v2, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/htc/calendar/AttendeesByLabelAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;

    .line 304
    .local v0, row:Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
    iget v2, v0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1

    .line 306
    .end local v0           #row:Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
    :cond_0
    :goto_0
    return v1

    .line 304
    .restart local v0       #row:Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
