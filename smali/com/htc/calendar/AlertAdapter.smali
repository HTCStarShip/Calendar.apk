.class public Lcom/htc/calendar/AlertAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AlertAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 41
    return-void
.end method

.method public static updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 10
    .parameter "context"
    .parameter "view"
    .parameter "eventName"
    .parameter "location"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "allDay"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 100
    .local v7, res:Landroid/content/res/Resources;
    const/4 v8, 0x0

    .line 103
    .local v8, textView:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    const v0, 0x7f080078

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 106
    :cond_1
    const v0, 0x7f0d002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #textView:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v8, Lcom/htc/widget/HtcListItem2LineText;

    .line 107
    .restart local v8       #textView:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v8, :cond_2

    .line 108
    invoke-virtual {v8, p2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 109
    const v0, 0x2030036

    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 115
    :cond_2
    if-eqz p8, :cond_4

    .line 116
    const/16 v5, 0x2012

    .line 118
    .local v5, flags:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, allDayString:Ljava/lang/String;
    move-object v9, v6

    .line 129
    .end local v6           #allDayString:Ljava/lang/String;
    .local v9, when:Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 130
    const v0, 0x7f0d002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #textView:Lcom/htc/widget/HtcListItem2LineText;
    check-cast v8, Lcom/htc/widget/HtcListItem2LineText;

    .line 131
    .restart local v8       #textView:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v8, :cond_3

    .line 132
    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 133
    const v0, 0x203003d

    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 135
    :cond_3
    return-void

    .line 121
    .end local v5           #flags:I
    .end local v9           #when:Ljava/lang/String;
    :cond_4
    const v5, 0x10111

    .line 122
    .restart local v5       #flags:I
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    or-int/lit16 v5, v5, 0x80

    :cond_5
    move-object v0, p0

    move-wide v1, p4

    move-wide/from16 v3, p6

    .line 126
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #when:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 47
    const v1, 0x7f0d002b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItemColorBar;

    .line 48
    .local v13, stripe:Lcom/htc/widget/HtcListItemColorBar;
    const/4 v1, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 51
    .local v11, color:I
    invoke-virtual {v13, v11}, Lcom/htc/widget/HtcListItemColorBar;->setBackgroundColor(I)V

    .line 75
    const/16 v1, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v12, 0x1

    .line 76
    .local v12, hasAlarm:Z
    :goto_0
    if-eqz v12, :cond_1

    .line 77
    const v1, 0x7f0d002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItemImageButton;

    .line 78
    .local v10, alarm:Lcom/htc/widget/HtcListItemImageButton;
    const v1, 0x7f020075

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 87
    :goto_1
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, eventName:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, location:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 90
    .local v5, startMillis:J
    const/4 v1, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 91
    .local v7, endMillis:J
    const/4 v1, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v9, 0x1

    .local v9, allDay:Z
    :goto_2
    move-object/from16 v1, p2

    move-object v2, p1

    .line 93
    invoke-static/range {v1 .. v9}, Lcom/htc/calendar/AlertAdapter;->updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 94
    return-void

    .line 75
    .end local v3           #eventName:Ljava/lang/String;
    .end local v4           #location:Ljava/lang/String;
    .end local v5           #startMillis:J
    .end local v7           #endMillis:J
    .end local v9           #allDay:Z
    .end local v10           #alarm:Lcom/htc/widget/HtcListItemImageButton;
    .end local v12           #hasAlarm:Z
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 81
    .restart local v12       #hasAlarm:Z
    :cond_1
    const v1, 0x7f0d002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItemImageButton;

    .line 82
    .restart local v10       #alarm:Lcom/htc/widget/HtcListItemImageButton;
    const v1, 0x7f020075

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 83
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto :goto_1

    .line 91
    .restart local v3       #eventName:Ljava/lang/String;
    .restart local v4       #location:Ljava/lang/String;
    .restart local v5       #startMillis:J
    .restart local v7       #endMillis:J
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method
