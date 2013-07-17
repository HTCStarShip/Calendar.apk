.class Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "MeetingInvitationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MeetingInvitationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeetingInvitationAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/MeetingInvitationActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    .line 487
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;-><init>(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 488
    return-void
.end method

.method public constructor <init>(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 492
    return-void
.end method

.method private covertRFC3339ToTime(Ljava/lang/String;)J
    .locals 3
    .parameter "rfcTime"

    .prologue
    .line 536
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 537
    .local v0, utcTime:Landroid/text/format/Time;
    invoke-virtual {v0, p1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 538
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method private formatDateRange(JJ)Ljava/lang/String;
    .locals 7
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 542
    cmp-long v4, p1, p3

    if-nez v4, :cond_0

    .line 543
    iget-object v4, p0, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, dateString:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, timeString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 551
    .end local v0           #dateString:Ljava/lang/String;
    .end local v3           #timeString:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 547
    :cond_0
    iget-object v4, p0, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, strBegin:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, strEnd:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 496
    const v17, 0x7f0d002d

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItem2LineText;

    .line 497
    .local v16, textView:Lcom/htc/widget/HtcListItem2LineText;
    const v17, 0x7f0d002b

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItemColorBar;

    .line 498
    .local v5, calendarColor:Lcom/htc/widget/HtcListItemColorBar;
    const v17, 0x7f0d002e

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemImageButton;

    .line 499
    .local v4, alarm:Lcom/htc/widget/HtcListItemImageButton;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 501
    const/16 v17, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 502
    .local v15, subject:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08006c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 506
    :cond_0
    const/16 v17, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->covertRFC3339ToTime(Ljava/lang/String;)J

    move-result-wide v13

    .line 507
    .local v13, startTime:J
    const/16 v17, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->covertRFC3339ToTime(Ljava/lang/String;)J

    move-result-wide v8

    .line 508
    .local v8, endTime:J
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v9}, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->formatDateRange(JJ)Ljava/lang/String;

    move-result-object v6

    .line 510
    .local v6, duration:Ljava/lang/String;
    const/16 v17, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 512
    .local v2, accountID:J
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 514
    .local v11, messageID:J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 516
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mAccountColorMap:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/htc/calendar/MeetingInvitationActivity;->access$600(Lcom/htc/calendar/MeetingInvitationActivity;)Ljava/util/HashMap;

    move-result-object v17

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItemColorBar;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 523
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 525
    const/16 v17, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-nez v17, :cond_1

    const/4 v10, 0x1

    .line 526
    .local v10, isRead:Z
    :goto_1
    if-eqz v10, :cond_2

    .line 527
    const v17, 0x20300b1

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 528
    const v17, 0x20300b6

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 533
    :goto_2
    return-void

    .line 517
    .end local v10           #isRead:Z
    :catch_0
    move-exception v7

    .line 518
    .local v7, e:Ljava/lang/Exception;
    const-string v17, "MeetingInvitationActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "calendarColor>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",mAccountColorMap>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mAccountColorMap:Ljava/util/HashMap;
    invoke-static/range {v19 .. v19}, Lcom/htc/calendar/MeetingInvitationActivity;->access$600(Lcom/htc/calendar/MeetingInvitationActivity;)Ljava/util/HashMap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",accountID>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v17, "MeetingInvitationActivity"

    const-string v18, "bindView caledarColor.setBackgroundColor error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 525
    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 530
    .restart local v10       #isRead:Z
    :cond_2
    const v17, 0x20300bb

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 531
    const v17, 0x20300c0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    goto :goto_2
.end method
