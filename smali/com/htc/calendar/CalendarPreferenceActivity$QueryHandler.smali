.class Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/CalendarPreferenceActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    .line 1223
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1224
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 17
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1228
    invoke-super/range {p0 .. p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    invoke-virtual {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->isFinishing()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1234
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1235
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1237
    :cond_0
    const/16 p3, 0x0

    .line 1245
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$400(Lcom/htc/calendar/CalendarPreferenceActivity;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 1246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$400(Lcom/htc/calendar/CalendarPreferenceActivity;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_2

    .line 1247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$400(Lcom/htc/calendar/CalendarPreferenceActivity;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1249
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    const/4 v15, 0x0

    #setter for: Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v14, v15}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$402(Lcom/htc/calendar/CalendarPreferenceActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1252
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    move-object/from16 v0, p3

    #setter for: Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v14, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$402(Lcom/htc/calendar/CalendarPreferenceActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1256
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1257
    .local v6, count:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #setter for: Lcom/htc/calendar/CalendarPreferenceActivity;->calendar_count:I
    invoke-static {v14, v6}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$502(Lcom/htc/calendar/CalendarPreferenceActivity;I)I

    .line 1258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "count:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$600(Lcom/htc/calendar/CalendarPreferenceActivity;Ljava/lang/String;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    new-array v15, v6, [Ljava/lang/String;

    #setter for: Lcom/htc/calendar/CalendarPreferenceActivity;->entries:[Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$702(Lcom/htc/calendar/CalendarPreferenceActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    new-array v15, v6, [Ljava/lang/String;

    #setter for: Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$802(Lcom/htc/calendar/CalendarPreferenceActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1264
    const/4 v4, 0x0

    .line 1265
    .local v4, bApplyToAll:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1266
    const/4 v4, 0x1

    .line 1269
    :cond_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 1270
    .local v5, calendar_count:I
    if-lez v5, :cond_e

    .line 1272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    new-array v15, v5, [Ljava/lang/String;

    #setter for: Lcom/htc/calendar/CalendarPreferenceActivity;->syncAccountTypeList:[Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$902(Lcom/htc/calendar/CalendarPreferenceActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1273
    const/4 v7, 0x0

    .line 1274
    .local v7, i:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1276
    :cond_5
    const/16 v14, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1277
    .local v3, accounttype:Ljava/lang/String;
    const/16 v14, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1278
    .local v2, accountname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->entries:[Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$700(Lcom/htc/calendar/CalendarPreferenceActivity;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    .line 1279
    new-instance v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    invoke-direct {v9, v14}, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;-><init>(Lcom/htc/calendar/CalendarPreferenceActivity;)V

    .line 1280
    .local v9, pref:Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->lCalendarId:J

    .line 1283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->syncAccountTypeList:[Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$900(Lcom/htc/calendar/CalendarPreferenceActivity;)[Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    .line 1285
    const/4 v14, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nHideDeclined:I

    .line 1286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    invoke-virtual {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->getHideDeclined()Z

    move-result v10

    .line 1288
    .local v10, tmpHideDeclined:Z
    iget v14, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nHideDeclined:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_13

    const/4 v14, 0x1

    :goto_0
    if-eq v10, v14, :cond_6

    if-eqz v4, :cond_7

    .line 1290
    :cond_6
    if-eqz v10, :cond_14

    const/4 v14, 0x1

    :goto_1
    iput v14, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nHideDeclined:I

    .line 1294
    :cond_7
    const/4 v14, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nReminderType:I

    .line 1295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    invoke-virtual {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->getAlertType()Ljava/lang/String;

    move-result-object v12

    .line 1297
    .local v12, tmpReminderType:Ljava/lang/String;
    iget v14, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nReminderType:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    if-eqz v4, :cond_9

    .line 1299
    :cond_8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nReminderType:I

    .line 1303
    :cond_9
    const/4 v14, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nReminderDuration:I

    .line 1304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    invoke-virtual {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->getReminderDuration()Ljava/lang/String;

    move-result-object v11

    .line 1306
    .local v11, tmpReminderDuration:Ljava/lang/String;
    iget v14, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nReminderDuration:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    if-eqz v4, :cond_b

    .line 1308
    :cond_a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nReminderDuration:I

    .line 1312
    :cond_b
    const/16 v14, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->strAlertRingtone:Ljava/lang/String;

    .line 1313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    invoke-virtual {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->getRingtone()Ljava/lang/String;

    move-result-object v13

    .line 1314
    .local v13, tmpRingtone:Ljava/lang/String;
    iget-object v14, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->strAlertRingtone:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    if-eqz v4, :cond_d

    .line 1316
    :cond_c
    iput-object v13, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->strAlertRingtone:Ljava/lang/String;

    .line 1319
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$800(Lcom/htc/calendar/CalendarPreferenceActivity;)[Ljava/lang/String;

    move-result-object v14

    iget-wide v15, v9, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->lCalendarId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    .line 1320
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->mPreferences:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$1000(Lcom/htc/calendar/CalendarPreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    add-int/lit8 v7, v7, 0x1

    .line 1322
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_5

    .line 1324
    .end local v2           #accountname:Ljava/lang/String;
    .end local v3           #accounttype:Ljava/lang/String;
    .end local v7           #i:I
    .end local v9           #pref:Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    .end local v10           #tmpHideDeclined:Z
    .end local v11           #tmpReminderDuration:Ljava/lang/String;
    .end local v12           #tmpReminderType:Ljava/lang/String;
    .end local v13           #tmpRingtone:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    const/4 v15, 0x1

    #setter for: Lcom/htc/calendar/CalendarPreferenceActivity;->mFirstUpdatePref:Z
    invoke-static {v14, v15}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$1102(Lcom/htc/calendar/CalendarPreferenceActivity;Z)Z

    .line 1325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->entries:[Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$700(Lcom/htc/calendar/CalendarPreferenceActivity;)[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$800(Lcom/htc/calendar/CalendarPreferenceActivity;)[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$800(Lcom/htc/calendar/CalendarPreferenceActivity;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;
    invoke-static {v15}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$800(Lcom/htc/calendar/CalendarPreferenceActivity;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    #setter for: Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J
    invoke-static/range {v14 .. v16}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$1202(Lcom/htc/calendar/CalendarPreferenceActivity;J)J

    .line 1330
    if-nez v4, :cond_f

    .line 1331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v15, v15, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v15}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J
    invoke-static {v15}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$1200(Lcom/htc/calendar/CalendarPreferenceActivity;)J

    move-result-wide v15

    #calls: Lcom/htc/calendar/CalendarPreferenceActivity;->reloadChildPreferences(J)V
    invoke-static/range {v14 .. v16}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$1300(Lcom/htc/calendar/CalendarPreferenceActivity;J)V

    .line 1335
    :cond_f
    const/4 v14, 0x1

    if-ne v5, v14, :cond_15

    .line 1337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v15, v15, Lcom/htc/calendar/CalendarPreferenceActivity;->mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v15, v15, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1345
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #calls: Lcom/htc/calendar/CalendarPreferenceActivity;->updateCalendarPreferences()V
    invoke-static {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$1400(Lcom/htc/calendar/CalendarPreferenceActivity;)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v14

    if-eqz v14, :cond_11

    .line 1350
    const-string v14, "CalendarPreferenceActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mCalendars.getEntry() is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const-string v1, ""

    .line 1352
    .local v1, _sync_account_type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v15, v15, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v15}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    .line 1353
    .local v8, idx:I
    if-ltz v8, :cond_10

    .line 1354
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #getter for: Lcom/htc/calendar/CalendarPreferenceActivity;->syncAccountTypeList:[Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$900(Lcom/htc/calendar/CalendarPreferenceActivity;)[Ljava/lang/String;

    move-result-object v14

    aget-object v1, v14, v8

    .line 1357
    :cond_10
    invoke-static {v1}, Lcom/htc/calendar/HtcUtils;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v14}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_16

    .line 1358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v15, v15, Lcom/htc/calendar/CalendarPreferenceActivity;->mHideDeclined:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1362
    .end local v1           #_sync_account_type:Ljava/lang/String;
    .end local v4           #bApplyToAll:Z
    .end local v5           #calendar_count:I
    .end local v6           #count:I
    .end local v8           #idx:I
    :cond_11
    :goto_3
    return-void

    .line 1239
    :cond_12
    if-nez p3, :cond_1

    goto :goto_3

    .line 1288
    .restart local v2       #accountname:Ljava/lang/String;
    .restart local v3       #accounttype:Ljava/lang/String;
    .restart local v4       #bApplyToAll:Z
    .restart local v5       #calendar_count:I
    .restart local v6       #count:I
    .restart local v7       #i:I
    .restart local v9       #pref:Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    .restart local v10       #tmpHideDeclined:Z
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1290
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1343
    .end local v2           #accountname:Ljava/lang/String;
    .end local v3           #accounttype:Ljava/lang/String;
    .end local v7           #i:I
    .end local v9           #pref:Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    .end local v10           #tmpHideDeclined:Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v15, v15, Lcom/htc/calendar/CalendarPreferenceActivity;->mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_2

    .line 1360
    .restart local v1       #_sync_account_type:Ljava/lang/String;
    .restart local v8       #idx:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v14, v14, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v15, v15, Lcom/htc/calendar/CalendarPreferenceActivity;->mHideDeclined:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v14, v15}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_3
.end method
