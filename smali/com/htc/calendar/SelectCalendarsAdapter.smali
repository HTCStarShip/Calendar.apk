.class public Lcom/htc/calendar/SelectCalendarsAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "SelectCalendarsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/SelectCalendarsAdapter$RefreshCalendars;,
        Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;
    }
.end annotation


# static fields
.field private static final ACCOUNT_COLUMN:I = 0x1

.field private static final ACCOUNT_SELECTION:Ljava/lang/String; = "account_name=? AND account_type=?"

.field private static final CALENDARS_ORDERBY:Ljava/lang/String; = "\"primary\" DESC,calendar_displayName COLLATE NOCASE"

.field private static final CHANGES_SIZE:I = 0x2

.field private static final COLLATE_NOCASE:Ljava/lang/String; = " COLLATE NOCASE"

.field private static final COLOR_COLUMN:I = 0x4

.field private static final ID_COLUMN:I = 0x0

.field private static final IS_PRIMARY:Ljava/lang/String; = "\"primary\""

.field private static final MIN_UPDATE_TOKEN:I = 0x3e8

.field private static final NAME_COLUMN:I = 0x3

.field private static final OWNER_COLUMN:I = 0x2

.field private static final PRIMARY_COLUMN:I = 0x7

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final REFRESH_DELAY:I = 0x1388

.field private static final REFRESH_DURATION:I = 0xea60

.field private static final SELECTED_COLUMN:I = 0x5

.field private static final SELECTED_INDEX:I = 0x0

.field private static final SYNCED_COLUMN:I = 0x6

.field private static final SYNCED_INDEX:I = 0x1

.field private static final SYNC_VIS_BUTTON_RES:[I = null

.field private static final TAG:Ljava/lang/String; = "Calendar"

.field private static mCalendarsUpdater:Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

.field private static mChildrenCursors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsDuplicateName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mRefresh:Z

.field private static final mStopRefreshing:Ljava/lang/Runnable;

.field private static mUpdateToken:I

.field private static notSyncedNotVisible:Ljava/lang/String;

.field private static syncedNotVisible:Ljava/lang/String;

.field private static syncedVisible:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/htc/calendar/SelectCalendarsActivity;

.field protected mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mCalendarChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarInitialStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNumAccounts:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 55
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/calendar/SelectCalendarsAdapter;->SYNC_VIS_BUTTON_RES:[I

    .line 65
    new-instance v0, Lcom/htc/calendar/SelectCalendarsAdapter$1;

    invoke-direct {v0}, Lcom/htc/calendar/SelectCalendarsAdapter$1;-><init>()V

    sput-object v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mStopRefreshing:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mChildrenCursors:Ljava/util/Map;

    .line 91
    const/16 v0, 0x3e8

    sput v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    .line 96
    sput-boolean v3, Lcom/htc/calendar/SelectCalendarsAdapter;->mRefresh:Z

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    .line 106
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "(account_name=ownerAccount) AS \"primary\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/SelectCalendarsAdapter;->PROJECTION:[Ljava/lang/String;

    return-void

    .line 55
    nop

    :array_0
    .array-data 0x4
        0x92t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/calendar/SelectCalendarsActivity;)V
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "act"

    .prologue
    .line 222
    invoke-direct {p0, p2, p1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarInitialStates:Ljava/util/Map;

    .line 223
    const v1, 0x7f080085

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/calendar/SelectCalendarsAdapter;->syncedVisible:Ljava/lang/String;

    .line 224
    const v1, 0x7f080086

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/calendar/SelectCalendarsAdapter;->syncedNotVisible:Ljava/lang/String;

    .line 225
    const v1, 0x7f080087

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/calendar/SelectCalendarsAdapter;->notSyncedNotVisible:Ljava/lang/String;

    .line 227
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 229
    iput-object p3, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mActivity:Lcom/htc/calendar/SelectCalendarsActivity;

    .line 230
    sget-object v1, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarsUpdater:Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    if-nez v1, :cond_0

    .line 231
    new-instance v1, Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    iget-object v2, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;-><init>(Lcom/htc/calendar/SelectCalendarsAdapter;Landroid/content/ContentResolver;)V

    sput-object v1, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarsUpdater:Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    .line 234
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mNumAccounts:I

    .line 235
    iget v1, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mNumAccounts:I

    if-nez v1, :cond_1

    .line 237
    const-string v1, "Calendar"

    const-string v2, "SelectCalendarsAdapter: No accounts were returned!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 241
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mActivity:Lcom/htc/calendar/SelectCalendarsActivity;

    invoke-virtual {v1}, Lcom/htc/calendar/SelectCalendarsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mView:Landroid/view/View;

    .line 245
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/calendar/SelectCalendarsAdapter;->mRefresh:Z

    .line 246
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mRefresh:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mRefresh:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mChildrenCursors:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/calendar/SelectCalendarsAdapter;)Lcom/htc/calendar/SelectCalendarsActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mActivity:Lcom/htc/calendar/SelectCalendarsActivity;

    return-object v0
.end method

.method static synthetic access$400()Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarsUpdater:Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/calendar/SelectCalendarsAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/calendar/SelectCalendarsAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 285
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 289
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 313
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, account:Ljava/lang/String;
    sget-object v10, Lcom/htc/calendar/SelectCalendarsAdapter;->notSyncedNotVisible:Ljava/lang/String;

    .line 315
    .local v10, status:Ljava/lang/String;
    const/4 v9, 0x2

    .line 316
    .local v9, state:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 317
    .local v8, position:I
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 320
    .local v3, id:J
    iget-object v11, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Boolean;

    .line 322
    .local v5, initialState:[Ljava/lang/Boolean;
    if-nez v5, :cond_0

    .line 323
    const/4 v11, 0x2

    new-array v5, v11, [Ljava/lang/Boolean;

    .line 324
    const/4 v12, 0x0

    const/4 v11, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_3

    const/4 v11, 0x1

    :goto_0
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v5, v12

    .line 325
    const/4 v12, 0x1

    const/4 v11, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_4

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v5, v12

    .line 326
    iget-object v11, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarInitialStates:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_0
    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 330
    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 331
    sget-object v10, Lcom/htc/calendar/SelectCalendarsAdapter;->syncedVisible:Ljava/lang/String;

    .line 332
    const/4 v9, 0x0

    .line 339
    :cond_1
    :goto_2
    const v11, 0x7f0d002f

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Lcom/htc/calendar/Utils;->getColorChip(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    const/4 v11, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, name:Ljava/lang/String;
    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, owner:Ljava/lang/String;
    sget-object v11, Lcom/htc/calendar/SelectCalendarsAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/htc/calendar/SelectCalendarsAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 345
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " <"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 351
    :cond_2
    const v11, 0x7f0d0031

    invoke-static {p1, v11, v6}, Lcom/htc/calendar/SelectCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 352
    const v11, 0x7f0d0032

    invoke-static {p1, v11, v10}, Lcom/htc/calendar/SelectCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 353
    const v11, 0x7f0d0030

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/MultiStateButton;

    .line 357
    .local v2, button:Lcom/htc/calendar/MultiStateButton;
    invoke-virtual {v2, p1}, Lcom/htc/calendar/MultiStateButton;->setTag(Ljava/lang/Object;)V

    .line 358
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {v2, p0}, Lcom/htc/calendar/MultiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    sget-object v11, Lcom/htc/calendar/SelectCalendarsAdapter;->SYNC_VIS_BUTTON_RES:[I

    invoke-virtual {v2, v11}, Lcom/htc/calendar/MultiStateButton;->setButtonResources([I)V

    .line 361
    invoke-virtual {v2, v9}, Lcom/htc/calendar/MultiStateButton;->setState(I)Z

    .line 362
    return-void

    .line 324
    .end local v2           #button:Lcom/htc/calendar/MultiStateButton;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #owner:Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 325
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 334
    :cond_5
    sget-object v10, Lcom/htc/calendar/SelectCalendarsAdapter;->syncedNotVisible:Ljava/lang/String;

    .line 335
    const/4 v9, 0x1

    goto/16 :goto_2
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 366
    const-string v4, "account_name"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 367
    .local v1, accountColumn:I
    const-string v4, "account_type"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 368
    .local v3, accountTypeColumn:I
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, account:Ljava/lang/String;
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, accountType:Ljava/lang/String;
    const/high16 v4, 0x7f0d

    invoke-static {p1, v4, v0}, Lcom/htc/calendar/SelectCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 371
    const v4, 0x7f0d0001

    invoke-virtual {p0, v2}, Lcom/htc/calendar/SelectCalendarsAdapter;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/htc/calendar/SelectCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 372
    return-void
.end method

.method public cancelRefreshStopDelay()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mView:Landroid/view/View;

    sget-object v1, Lcom/htc/calendar/SelectCalendarsAdapter;->mStopRefreshing:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 255
    return-void
.end method

.method public doSaveAction()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x3e8

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 263
    sget-object v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarsUpdater:Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    sget v1, Lcom/htc/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    invoke-virtual {v0, v1}, Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;->cancelOperation(I)V

    .line 264
    sget v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    .line 267
    sget v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    if-ge v0, v2, :cond_0

    sput v2, Lcom/htc/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 270
    .local v8, changeKeys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 272
    .local v9, id:J
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Boolean;

    .line 273
    .local v7, change:[Ljava/lang/Boolean;
    aget-object v0, v7, v14

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v11, v13

    .line 274
    .local v11, newSelected:I
    :goto_1
    aget-object v0, v7, v13

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v12, v13

    .line 276
    .local v12, newSynced:I
    :goto_2
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 277
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "visible"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v0, "sync_events"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    sget-object v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarsUpdater:Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    sget v1, Lcom/htc/calendar/SelectCalendarsAdapter;->mUpdateToken:I

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v11           #newSelected:I
    .end local v12           #newSynced:I
    :cond_1
    move v11, v14

    .line 273
    goto :goto_1

    .restart local v11       #newSelected:I
    :cond_2
    move v12, v14

    .line 274
    goto :goto_2

    .line 282
    .end local v7           #change:[Ljava/lang/Boolean;
    .end local v9           #id:J
    .end local v11           #newSelected:I
    :cond_3
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 7
    .parameter "groupCursor"

    .prologue
    .line 376
    const-string v5, "account_name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 377
    .local v1, accountColumn:I
    const-string v5, "account_type"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 378
    .local v3, accountTypeColumn:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, account:Ljava/lang/String;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, accountType:Ljava/lang/String;
    sget-object v5, Lcom/htc/calendar/SelectCalendarsAdapter;->mChildrenCursors:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    .line 382
    .local v4, childCursor:Landroid/database/Cursor;
    new-instance v5, Lcom/htc/calendar/SelectCalendarsAdapter$RefreshCalendars;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-direct {v5, p0, v6, v0, v2}, Lcom/htc/calendar/SelectCalendarsAdapter$RefreshCalendars;-><init>(Lcom/htc/calendar/SelectCalendarsAdapter;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/htc/calendar/SelectCalendarsAdapter$RefreshCalendars;->run()V

    .line 383
    return-object v4
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    :try_start_0
    iget-object v4, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 302
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mActivity:Lcom/htc/calendar/SelectCalendarsActivity;

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/calendar/SelectCalendarsActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 303
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 308
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 304
    :catch_0
    move-exception v2

    .line 305
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Calendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label for account type , type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 186
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 187
    .local v1, id:J
    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 188
    .local v5, uri:Landroid/net/Uri;
    sget-object v4, Lcom/htc/calendar/SelectCalendarsAdapter;->syncedNotVisible:Ljava/lang/String;

    .line 190
    .local v4, status:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarInitialStates:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Boolean;

    .line 191
    .local v3, initialState:[Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 192
    iget-object v7, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Boolean;

    .line 200
    .local v0, change:[Ljava/lang/Boolean;
    :goto_0
    aget-object v7, v0, v9

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 201
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v9

    .line 202
    sget-object v4, Lcom/htc/calendar/SelectCalendarsAdapter;->syncedNotVisible:Ljava/lang/String;

    .line 214
    :goto_1
    const v7, 0x7f0d0032

    invoke-static {v6, v7, v4}, Lcom/htc/calendar/SelectCalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 215
    aget-object v7, v0, v9

    aget-object v8, v3, v9

    if-ne v7, v8, :cond_0

    aget-object v7, v0, v10

    aget-object v8, v3, v10

    if-ne v7, v8, :cond_0

    .line 217
    iget-object v7, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_0
    return-void

    .line 194
    .end local v0           #change:[Ljava/lang/Boolean;
    :cond_1
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Boolean;

    .line 195
    .restart local v0       #change:[Ljava/lang/Boolean;
    aget-object v7, v3, v9

    aput-object v7, v0, v9

    .line 196
    aget-object v7, v3, v10

    aput-object v7, v0, v10

    .line 197
    iget-object v7, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_2
    aget-object v7, v0, v10

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 205
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v10

    .line 206
    sget-object v4, Lcom/htc/calendar/SelectCalendarsAdapter;->notSyncedNotVisible:Ljava/lang/String;

    goto :goto_1

    .line 210
    :cond_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v10

    .line 211
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v9

    .line 212
    sget-object v4, Lcom/htc/calendar/SelectCalendarsAdapter;->syncedVisible:Ljava/lang/String;

    goto :goto_1
.end method

.method public startRefreshStopDelay()V
    .locals 4

    .prologue
    .line 249
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/calendar/SelectCalendarsAdapter;->mRefresh:Z

    .line 250
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsAdapter;->mView:Landroid/view/View;

    sget-object v1, Lcom/htc/calendar/SelectCalendarsAdapter;->mStopRefreshing:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    return-void
.end method
