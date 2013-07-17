.class public Lcom/htc/calendar/CalendarSearchActivity;
.super Landroid/app/Activity;
.source "CalendarSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CalendarSearchActivity"


# instance fields
.field private final URI_INSTANCES_ID:Landroid/net/Uri;

.field private mCleanText:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEventChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mListView:Lcom/htc/calendar/EventListView;

.field private mPreviousQueryString:Ljava/lang/String;

.field private mQueryHandler:Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;

.field private mQueryIntent:Landroid/content/Intent;

.field private mQueryString:Ljava/lang/String;

.field private mQueryToken:I

.field private mSearchBox:Lcom/htc/widget/HeaderBarInput;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const-string v0, "content://com.android.calendar/instances_id/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->URI_INSTANCES_ID:Landroid/net/Uri;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mPreviousQueryString:Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mCleanText:Z

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryToken:I

    .line 195
    new-instance v0, Lcom/htc/calendar/CalendarSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarSearchActivity$1;-><init>(Lcom/htc/calendar/CalendarSearchActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mTextWatcher:Landroid/text/TextWatcher;

    .line 297
    new-instance v0, Lcom/htc/calendar/CalendarSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarSearchActivity$2;-><init>(Lcom/htc/calendar/CalendarSearchActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mEventChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/CalendarSearchActivity;)Lcom/htc/calendar/EventListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mListView:Lcom/htc/calendar/EventListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/CalendarSearchActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/calendar/CalendarSearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/calendar/CalendarSearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/calendar/CalendarSearchActivity;->goToToday()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/calendar/CalendarSearchActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarSearchActivity;->dirtyCloseCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/calendar/CalendarSearchActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mCleanText:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/calendar/CalendarSearchActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mCleanText:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/calendar/CalendarSearchActivity;)Lcom/htc/widget/HeaderBarInput;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/calendar/CalendarSearchActivity;Lcom/htc/widget/HeaderBarInput;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarSearchActivity;->getEditText(Lcom/htc/widget/HeaderBarInput;)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/calendar/CalendarSearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/calendar/CalendarSearchActivity;->doingQuery()V

    return-void
.end method

.method static synthetic access$802(Lcom/htc/calendar/CalendarSearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mPreviousQueryString:Ljava/lang/String;

    return-object p1
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 395
    return-void
.end method

.method private dirtyCloseCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 379
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/calendar/CalendarSearchActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/calendar/CalendarSearchActivity$3;-><init>(Lcom/htc/calendar/CalendarSearchActivity;Landroid/database/Cursor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 389
    return-void
.end method

.method private doingQuery()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 258
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 259
    .local v9, prefs:Landroid/content/SharedPreferences;
    const-string v0, "preferences_hide_declined"

    invoke-interface {v9, v0, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 262
    .local v8, hideDeclined:Z
    const-string v0, "content://com.android.calendar/suggestion/search_suggest_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 266
    .local v3, uri:Landroid/net/Uri;
    if-eqz v8, :cond_2

    .line 267
    const-string v5, "visible=1 AND selfAttendeeStatus!=2"

    .line 272
    .local v5, selection:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doingQuery mPreviousQueryString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mPreviousQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mQueryString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/CalendarSearchActivity;->debug(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mPreviousQueryString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mPreviousQueryString:Ljava/lang/String;

    .line 279
    iget v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryToken:I

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/CalendarSearchActivity;->debug(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryHandler:Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;

    iget v1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryToken:I

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;->cancelOperation(I)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryHandler:Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;

    iget v1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryToken:I

    const/4 v2, 0x0

    sget-object v4, Lcom/htc/calendar/EventListView;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;

    aput-object v7, v6, v10

    const-string v7, "startDay ASC, begin ASC, title ASC"

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryToken:I

    .line 290
    :cond_1
    return-void

    .line 270
    .end local v5           #selection:Ljava/lang/String;
    :cond_2
    const-string v5, "visible=1"

    .restart local v5       #selection:Ljava/lang/String;
    goto :goto_0
.end method

.method private getEditText(Lcom/htc/widget/HeaderBarInput;)Landroid/widget/EditText;
    .locals 2
    .parameter "headerBarInput"

    .prologue
    const/4 v1, 0x0

    .line 398
    if-nez p1, :cond_1

    move-object v0, v1

    .line 406
    :cond_0
    :goto_0
    return-object v0

    .line 402
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 403
    .local v0, actv:Landroid/widget/AutoCompleteTextView;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 406
    goto :goto_0
.end method

.method private goToToday()V
    .locals 5

    .prologue
    .line 314
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mListView:Lcom/htc/calendar/EventListView;

    if-eqz v2, :cond_0

    .line 315
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 316
    .local v1, time:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 318
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mListView:Lcom/htc/calendar/EventListView;

    invoke-virtual {v2}, Lcom/htc/calendar/EventListView;->getDayAdapter()Lcom/htc/calendar/EventByDayAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/calendar/EventByDayAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v0

    .line 319
    .local v0, listviewPosition:I
    const-string v2, "CalendarSearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listviewPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mListView:Lcom/htc/calendar/EventListView;

    invoke-virtual {v2, v0}, Lcom/htc/calendar/EventListView;->setSelection(I)V

    .line 322
    .end local v0           #listviewPosition:I
    .end local v1           #time:Landroid/text/format/Time;
    :cond_0
    return-void
.end method

.method private initUI()V
    .locals 7

    .prologue
    const v6, 0x7f080020

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    const v3, 0x7f0d00f2

    invoke-virtual {p0, v3}, Lcom/htc/calendar/CalendarSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarMiddle;

    .line 228
    .local v1, headerBar:Lcom/htc/widget/HeaderBarMiddle;
    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarMiddle;->enableLeftDivider(Z)V

    .line 230
    const v3, 0x7f0d00f3

    invoke-virtual {p0, v3}, Lcom/htc/calendar/CalendarSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarImage;

    .line 231
    .local v2, icon:Lcom/htc/widget/HeaderBarImage;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 232
    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 233
    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 234
    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 236
    const v3, 0x7f0d00f4

    invoke-virtual {p0, v3}, Lcom/htc/calendar/CalendarSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarInput;

    iput-object v3, p0, Lcom/htc/calendar/CalendarSearchActivity;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    .line 237
    iget-object v3, p0, Lcom/htc/calendar/CalendarSearchActivity;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 238
    iget-object v3, p0, Lcom/htc/calendar/CalendarSearchActivity;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v3}, Lcom/htc/widget/HeaderBarInput;->disableLeftPadding()V

    .line 239
    iget-object v3, p0, Lcom/htc/calendar/CalendarSearchActivity;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 240
    iget-object v3, p0, Lcom/htc/calendar/CalendarSearchActivity;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v3}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 242
    iget-object v3, p0, Lcom/htc/calendar/CalendarSearchActivity;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    invoke-direct {p0, v3}, Lcom/htc/calendar/CalendarSearchActivity;->getEditText(Lcom/htc/widget/HeaderBarInput;)Landroid/widget/EditText;

    move-result-object v0

    .line 243
    .local v0, edtText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 244
    iget-object v3, p0, Lcom/htc/calendar/CalendarSearchActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    invoke-virtual {p0, v6}, Lcom/htc/calendar/CalendarSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 248
    :cond_0
    const v3, 0x7f0d0027

    invoke-virtual {p0, v3}, Lcom/htc/calendar/CalendarSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/EventListView;

    iput-object v3, p0, Lcom/htc/calendar/CalendarSearchActivity;->mListView:Lcom/htc/calendar/EventListView;

    .line 249
    iget-object v3, p0, Lcom/htc/calendar/CalendarSearchActivity;->mListView:Lcom/htc/calendar/EventListView;

    invoke-virtual {v3, p0}, Lcom/htc/calendar/EventListView;->setActivity(Landroid/app/Activity;)V

    .line 250
    iget-object v3, p0, Lcom/htc/calendar/CalendarSearchActivity;->mListView:Lcom/htc/calendar/EventListView;

    invoke-virtual {v3, v5}, Lcom/htc/calendar/EventListView;->setMode(I)V

    .line 251
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v3

    if-nez v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/htc/calendar/CalendarSearchActivity;->mListView:Lcom/htc/calendar/EventListView;

    const v4, 0x7f0d0034

    invoke-virtual {p0, v4}, Lcom/htc/calendar/CalendarSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/calendar/EventListView;->setEmptyView(Landroid/view/View;)V

    .line 255
    :cond_1
    return-void
.end method

.method private launchQueryDetail(Landroid/content/Intent;)V
    .locals 23
    .parameter "intentQuery"

    .prologue
    .line 325
    move-object/from16 v20, p1

    .line 326
    .local v20, queryIntent:Landroid/content/Intent;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 328
    .local v21, queryUri:Landroid/net/Uri;
    const-string v2, "CalendarSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v2, "CalendarSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryUri.toString(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 332
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 334
    .local v16, instanceId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarSearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_0

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/CalendarSearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 338
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarSearchActivity;->URI_INSTANCES_ID:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 339
    .local v3, uri:Landroid/net/Uri;
    const-string v2, "CalendarSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instances URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarSearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/calendar/EventListView;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 341
    .local v11, cursor:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 343
    .local v19, nCount:I
    if-eqz v11, :cond_3

    .line 344
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 345
    if-eqz v19, :cond_2

    .line 346
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 348
    const/16 v2, 0x9

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 349
    .local v14, eventId:J
    const/4 v2, 0x7

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 350
    .local v9, begin:J
    const/16 v2, 0x8

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 351
    .local v12, end:J
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 353
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v8, 0x1

    .line 354
    .local v8, allDay:Z
    :goto_0
    if-eqz v8, :cond_1

    .line 355
    new-instance v22, Landroid/text/format/Time;

    invoke-direct/range {v22 .. v22}, Landroid/text/format/Time;-><init>()V

    .line 356
    .local v22, time:Landroid/text/format/Time;
    const-wide/16 v4, 0x0

    invoke-static {v9, v10, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 357
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 359
    const-wide/16 v4, 0x0

    invoke-static {v12, v13, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 360
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 363
    .end local v22           #time:Landroid/text/format/Time;
    :cond_1
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 364
    .local v18, intent:Landroid/content/Intent;
    const-string v2, "beginTime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 365
    const-string v2, "endTime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarSearchActivity;->finish()V

    .line 370
    .end local v8           #allDay:Z
    .end local v9           #begin:J
    .end local v12           #end:J
    .end local v14           #eventId:J
    .end local v18           #intent:Landroid/content/Intent;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 371
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 376
    .end local v3           #uri:Landroid/net/Uri;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v16           #instanceId:J
    .end local v19           #nCount:I
    :cond_3
    return-void

    .line 353
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v9       #begin:J
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #end:J
    .restart local v14       #eventId:J
    .restart local v16       #instanceId:J
    .restart local v19       #nCount:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private processQueryIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryIntent:Landroid/content/Intent;

    .line 102
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryIntent:Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarSearchActivity;->launchQueryDetail(Landroid/content/Intent;)V

    .line 124
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryIntent:Landroid/content/Intent;

    const-string v3, "query"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarSearchActivity;->getEditText(Lcom/htc/widget/HeaderBarInput;)Landroid/widget/EditText;

    move-result-object v1

    .line 117
    .local v1, et:Landroid/widget/EditText;
    if-eqz v1, :cond_0

    .line 118
    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    .end local v1           #et:Landroid/widget/EditText;
    :cond_2
    const-string v2, "CalendarSearchActivity"

    const-string v3, "no QUERY string in intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processSearchRecentSuggestions()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "com.htc.calendar.CalendarRecentSuggestionsProvider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 191
    .local v0, suggestions:Landroid/provider/SearchRecentSuggestions;
    iget-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/calendar/CalendarSearchActivity;->requestWindowFeature(I)Z

    .line 131
    const v1, 0x7f030014

    invoke-virtual {p0, v1}, Lcom/htc/calendar/CalendarSearchActivity;->setContentView(I)V

    .line 134
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryToken:I

    .line 136
    invoke-direct {p0}, Lcom/htc/calendar/CalendarSearchActivity;->initUI()V

    .line 138
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 139
    new-instance v1, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;

    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;-><init>(Lcom/htc/calendar/CalendarSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryHandler:Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, filterEventChanged:Landroid/content/IntentFilter;
    const-string v1, "com.htc.calendar.event_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mEventChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/calendar/CalendarSearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/calendar/CalendarSearchActivity;->processQueryIntent(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryHandler:Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;

    iget v1, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryToken:I

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;->cancelOperation(I)V

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mQueryToken:I

    .line 165
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mEventChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity;->mEventChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarSearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 152
    const-string v0, "CalendarSearchActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0, p1}, Lcom/htc/calendar/CalendarSearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/CalendarSearchActivity;->processQueryIntent(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 173
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 178
    invoke-direct {p0}, Lcom/htc/calendar/CalendarSearchActivity;->doingQuery()V

    .line 179
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 185
    return-void
.end method
