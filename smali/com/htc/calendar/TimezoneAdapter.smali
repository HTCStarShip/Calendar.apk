.class public Lcom/htc/calendar/TimezoneAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TimezoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_RECENT_TIMEZONES:Ljava/lang/String; = "preferences_recent_timezones"

.field private static final MAX_RECENT_TIMEZONES:I = 0x3

.field private static final RECENT_TIMEZONES_DELIMITER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "TimezoneAdapter"

.field private static sTimezones:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTimezone:Ljava/lang/String;

.field private mShowingAll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "currentTimezone"

    .prologue
    const/4 v2, 0x0

    .line 205
    const v0, 0x20900af

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 194
    iput-boolean v2, p0, Lcom/htc/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 206
    iput-object p1, p0, Lcom/htc/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/htc/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    .line 208
    iput-boolean v2, p0, Lcom/htc/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 209
    invoke-virtual {p0}, Lcom/htc/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 210
    return-void
.end method

.method private loadFromResources(Landroid/content/res/Resources;)V
    .locals 10
    .parameter "resources"

    .prologue
    .line 359
    sget-object v7, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    if-nez v7, :cond_2

    .line 360
    const v7, 0x7f060003

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, ids:[Ljava/lang/String;
    const v7, 0x7f060002

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, labels:[Ljava/lang/String;
    array-length v4, v2

    .line 364
    .local v4, length:I
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v7, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    .line 366
    array-length v7, v2

    array-length v8, v3

    if-eq v7, v8, :cond_0

    .line 367
    const-string v7, "TimezoneAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ids length ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") and labels length("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") should be equal but aren\'t."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    const/4 v5, 0x0

    .line 372
    .local v5, tr:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    const/4 v1, 0x0

    .local v1, i:I
    move-object v6, v5

    .end local v5           #tr:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    .local v6, tr:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    :goto_0
    if-ge v1, v4, :cond_2

    .line 374
    :try_start_0
    new-instance v5, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;

    aget-object v7, v2, v1

    aget-object v8, v3, v1

    invoke-direct {v5, v7, v8}, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v6           #tr:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    .restart local v5       #tr:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    :goto_1
    if-eqz v5, :cond_1

    sget-object v7, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    aget-object v8, v2, v1

    invoke-virtual {v7, v8, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v6, v5

    .end local v5           #tr:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    .restart local v6       #tr:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "TimezoneAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TimeZoneRow exception, ids : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", labels"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .end local v6           #tr:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    .restart local v5       #tr:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    goto :goto_1

    .line 383
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    .end local v2           #ids:[Ljava/lang/String;
    .end local v3           #labels:[Ljava/lang/String;
    .end local v4           #length:I
    .end local v5           #tr:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    :cond_2
    return-void
.end method


# virtual methods
.method public clearTimzone()V
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    sget-object v0, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 389
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    goto :goto_0
.end method

.method public getAllTimezones()[[Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 347
    const/4 v7, 0x2

    sget-object v8, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    filled-new-array {v7, v8}, [I

    move-result-object v7

    const-class v8, Ljava/lang/CharSequence;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/CharSequence;

    .line 348
    .local v5, timeZones:[[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    sget-object v7, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    .local v3, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    sget-object v7, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    .local v6, timezones:Ljava/util/List;,"Ljava/util/List<Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;>;"
    const/4 v0, 0x0

    .line 351
    .local v0, i:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;

    .line 352
    .local v4, row:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    aput-object v7, v8, v0

    .line 353
    const/4 v7, 0x1

    aget-object v7, v5, v7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4}, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 355
    .end local v4           #row:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    :cond_0
    return-object v5
.end method

.method public getRowById(Ljava/lang/String;)I
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, -0x1

    .line 220
    sget-object v2, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    sget-object v2, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;

    .line 222
    .local v0, timezone:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0, v0}, Lcom/htc/calendar/TimezoneAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public saveRecentTimezone(Ljava/lang/String;)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x3

    .line 318
    iget-object v3, p0, Lcom/htc/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_recent_timezones"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, recentsString:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    .local v1, recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_1

    .line 329
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 324
    .end local v1           #recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1       #recents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 331
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    const-string v3, ","

    invoke-static {v1, v3}, Lcom/htc/calendar/Utils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "preferences_recent_timezones"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    return-void
.end method

.method public setCurrentTimezone(Ljava/lang/String;)V
    .locals 1
    .parameter "currentTimezone"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    .line 304
    iget-boolean v0, p0, Lcom/htc/calendar/TimezoneAdapter;->mShowingAll:Z

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/htc/calendar/TimezoneAdapter;->showInitialTimezones()V

    .line 307
    :cond_0
    return-void
.end method

.method public showAllTimezones()V
    .locals 4

    .prologue
    .line 287
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 288
    .local v2, timezones:Ljava/util/List;,"Ljava/util/List<Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 289
    invoke-virtual {p0}, Lcom/htc/calendar/TimezoneAdapter;->clear()V

    .line 290
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;

    .line 291
    .local v1, timezone:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    invoke-virtual {p0, v1}, Lcom/htc/calendar/TimezoneAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    .end local v1           #timezone:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 294
    return-void
.end method

.method public showInitialTimezones()V
    .locals 15

    .prologue
    .line 241
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 244
    .local v4, ids:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/htc/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/calendar/TimezoneAdapter;->mCurrentTimezone:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v11, p0, Lcom/htc/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/htc/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 251
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v11, "preferences_recent_timezones"

    const/4 v12, 0x0

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, recentsString:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 253
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, recents:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v8, v0, v2

    .line 255
    .local v8, recent:Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v4, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v8           #recent:Ljava/lang/String;
    .end local v9           #recents:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/calendar/TimezoneAdapter;->clear()V

    .line 261
    const-class v12, Lcom/htc/calendar/TimezoneAdapter;

    monitor-enter v12

    .line 262
    :try_start_0
    iget-object v11, p0, Lcom/htc/calendar/TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/calendar/TimezoneAdapter;->loadFromResources(Landroid/content/res/Resources;)V

    .line 263
    const-string v11, "GMT"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 264
    .local v1, gmt:Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 265
    .local v3, id:Ljava/lang/String;
    sget-object v11, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 267
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 271
    .local v6, newTz:Ljava/util/TimeZone;
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 272
    sget-object v11, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    new-instance v13, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;

    invoke-virtual {v6}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v3, v14}, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v6           #newTz:Ljava/util/TimeZone;
    :cond_4
    sget-object v11, Lcom/htc/calendar/TimezoneAdapter;->sTimezones:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/htc/calendar/TimezoneAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 279
    .end local v1           #gmt:Ljava/util/TimeZone;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .restart local v1       #gmt:Ljava/util/TimeZone;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/calendar/TimezoneAdapter;->mShowingAll:Z

    .line 281
    return-void
.end method
