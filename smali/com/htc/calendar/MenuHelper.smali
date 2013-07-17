.class public Lcom/htc/calendar/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/MenuHelper$DateListener;
    }
.end annotation


# static fields
.field public static final MENU_AGENDA:I = 0x2

.field public static final MENU_ASSOCIATE_NOTES:I = 0x1b

.field public static final MENU_DAY:I = 0x3

.field public static final MENU_EDIT_TAB:I = 0xf

.field public static final MENU_EVENT_CREATE:I = 0x6

.field public static final MENU_EVENT_DELETE:I = 0x8

.field public static final MENU_EVENT_EDIT:I = 0x7

.field public static final MENU_EVENT_VIEW:I = 0x5

.field public static final MENU_GOTO_TODAY:I = 0x1

.field public static final MENU_GO_TO:I = 0xe

.field private static final MENU_GROUP_AGENDA:I = 0x1

.field public static final MENU_GROUP_ASSOCIATE_NOTES:I = 0x12

.field private static final MENU_GROUP_DAY:I = 0x2

.field public static final MENU_GROUP_EDIT_TAB:I = 0x16

.field private static final MENU_GROUP_EVENT_CREATE:I = 0x5

.field private static final MENU_GROUP_GO_TO:I = 0xa

.field private static final MENU_GROUP_MONTH:I = 0x4

.field private static final MENU_GROUP_PREFERENCES:I = 0x8

.field private static final MENU_GROUP_SELECT_CALENDARS:I = 0x7

.field public static final MENU_GROUP_SHOWME:I = 0x15

.field private static final MENU_GROUP_SYNC_CALENDARS:I = 0x9

.field private static final MENU_GROUP_TODAY:I = 0x6

.field public static final MENU_GROUP_UNASSOCIATE_NOTES:I = 0x13

.field private static final MENU_GROUP_WEEK:I = 0x3

.field public static final MENU_GROUP_WIFI_PRINT:I = 0x14

.field public static final MENU_MONTH:I = 0x9

.field public static final MENU_PREFERENCES:I = 0xb

.field public static final MENU_SELECT_CALENDARS:I = 0xa

.field public static final MENU_SEND_VCAL:I = 0xc

.field public static final MENU_SHOWME:I = 0x1e

.field public static final MENU_SYNC_CALENDARS:I = 0xd

.field public static final MENU_UNASSOCIATE_NOTES:I = 0x1c

.field public static final MENU_WEEK:I = 0x4

.field public static final MENU_WIFI_PRINT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "MenuHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 317
    return-void
.end method

.method public static onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    const/16 v1, 0x9

    const/16 v2, 0xd

    const v3, 0x20c0202

    invoke-interface {p0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 190
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 191
    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 193
    const/4 v1, 0x6

    const v2, 0x7f080082

    invoke-interface {p0, v1, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 194
    const v1, 0x7f020072

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 195
    const/16 v1, 0x74

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 197
    const/16 v1, 0xa

    const/16 v2, 0xe

    const v3, 0x7f080040

    invoke-interface {p0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 198
    const v1, 0x7f020062

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 199
    const/16 v1, 0x67

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 201
    const/16 v1, 0x16

    const/16 v2, 0xf

    const v3, 0x7f080070

    invoke-interface {p0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 202
    const v1, 0x208032f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 207
    const/16 v1, 0x8

    const/16 v2, 0xb

    const v3, 0x7f0800c4

    invoke-interface {p0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 208
    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 209
    const/16 v1, 0x70

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 210
    const/16 v1, 0x15

    const/16 v2, 0x1e

    const v3, 0x7f08006e

    invoke-interface {p0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 211
    const v1, 0x2080328

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 212
    return v5
.end method

.method public static onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/htc/calendar/Navigator;)Z
    .locals 21
    .parameter "activity"
    .parameter "item"
    .parameter "nav"

    .prologue
    .line 216
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 307
    :cond_0
    const/4 v2, 0x0

    .end local p0
    :goto_0
    return v2

    .line 218
    .restart local p0
    :sswitch_0
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v14, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/calendar/ManageCalendarsActivity;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 221
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 222
    const/4 v2, 0x1

    goto :goto_0

    .line 225
    .end local v14           #intent:Landroid/content/Intent;
    :sswitch_1
    check-cast p0, Lcom/htc/calendar/CalendarCarouselActivity;

    .end local p0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v16

    check-cast v16, Lcom/htc/calendar/Navigator;

    .line 226
    .local v16, n:Lcom/htc/calendar/Navigator;
    invoke-interface/range {v16 .. v16}, Lcom/htc/calendar/Navigator;->goToToday()V

    .line 227
    const/4 v2, 0x1

    goto :goto_0

    .line 229
    .end local v16           #n:Lcom/htc/calendar/Navigator;
    .restart local p0
    :sswitch_2
    check-cast p0, Lcom/htc/calendar/CalendarCarouselActivity;

    .end local p0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarCarouselActivity;->editTab()V

    .line 230
    const/4 v2, 0x1

    goto :goto_0

    .line 232
    .restart local p0
    :sswitch_3
    const-class v2, Lcom/htc/calendar/CalendarPreferenceActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/htc/calendar/Navigator;->getSelectedTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 233
    const/4 v2, 0x1

    goto :goto_0

    .line 235
    :sswitch_4
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v14       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.showme"

    const-string v4, "com.htc.showme.ui.Search"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 237
    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "calendar"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 239
    const/4 v2, 0x1

    goto :goto_0

    .line 243
    .end local v14           #intent:Landroid/content/Intent;
    :sswitch_5
    const-class v2, Lcom/htc/calendar/AgendaActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/htc/calendar/Navigator;->getSelectedTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 244
    const/4 v2, 0x1

    goto :goto_0

    .line 246
    :sswitch_6
    const-class v2, Lcom/htc/calendar/DayActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/htc/calendar/Navigator;->getSelectedTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 247
    const/4 v2, 0x1

    goto :goto_0

    .line 249
    :sswitch_7
    const-class v2, Lcom/htc/calendar/WeekActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/htc/calendar/Navigator;->getSelectedTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 250
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 252
    :sswitch_8
    const-class v2, Lcom/htc/calendar/MonthActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/htc/calendar/Navigator;->getSelectedTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 253
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 255
    :sswitch_9
    invoke-interface/range {p2 .. p2}, Lcom/htc/calendar/Navigator;->getSelectedTime()J

    move-result-wide v19

    .line 256
    .local v19, startMillis:J
    const/4 v2, 0x1

    move-wide/from16 v0, v19

    invoke-static {v2, v0, v1}, Lcom/htc/calendar/HtcUtils;->correctNewEventStartTime(ZJ)J

    move-result-wide v19

    .line 257
    const-wide/32 v2, 0x36ee80

    add-long v12, v19, v2

    .line 258
    .local v12, endMillis:J
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .restart local v14       #intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/calendar/EditEvent;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v2, "beginTime"

    move-wide/from16 v0, v19

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 261
    const-string v2, "endTime"

    invoke-virtual {v14, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 262
    const-string v2, "allDay"

    invoke-interface/range {p2 .. p2}, Lcom/htc/calendar/Navigator;->getAllDay()Z

    move-result v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 264
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 268
    .end local v12           #endMillis:J
    .end local v14           #intent:Landroid/content/Intent;
    .end local v19           #startMillis:J
    :sswitch_a
    const-string v2, "MenuHelper"

    const-string v3, "Refresh Calendars"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/EASMailUtils;->syncEASCalendarByManual(Landroid/content/Context;)V

    .line 270
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/HtcUtils;->syncGoogleCalendar(Landroid/content/Context;)V

    .line 271
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/HtcUtils;->syncFacebookCalendar(Landroid/content/Context;)V

    .line 272
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 276
    :sswitch_b
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/htc/calendar/CalendarCarouselActivity;

    if-eqz v2, :cond_1

    .line 277
    check-cast p0, Lcom/htc/calendar/CalendarCarouselActivity;

    .end local p0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    .line 279
    .restart local p0
    :cond_1
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/htc/calendar/MonthActivity;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/htc/calendar/WeekActivity;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/htc/calendar/DayActivity;

    if-eqz v2, :cond_4

    :cond_2
    const/4 v11, 0x1

    .line 284
    .local v11, bShowGoTo:Z
    :goto_1
    if-eqz v11, :cond_0

    .line 285
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/htc/calendar/MonthActivity;

    if-eqz v2, :cond_5

    .line 286
    check-cast p0, Lcom/htc/calendar/MonthActivity;

    .line 294
    :cond_3
    :goto_2
    invoke-interface/range {p2 .. p2}, Lcom/htc/calendar/Navigator;->getSelectedTime()J

    move-result-wide v17

    .line 295
    .local v17, selectedTime:J
    const-string v2, "MenuHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Go_TO selectedTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 297
    .local v15, mTime:Landroid/text/format/Time;
    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 298
    new-instance v2, Lcom/htc/widget/HtcDatePickerDialog;

    new-instance v4, Lcom/htc/calendar/MenuHelper$DateListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/htc/calendar/MenuHelper$DateListener;-><init>(Landroid/app/Activity;Lcom/htc/calendar/Navigator;)V

    const/16 v5, 0x7d0

    const/16 v6, 0x7ee

    iget v7, v15, Landroid/text/format/Time;->year:I

    iget v8, v15, Landroid/text/format/Time;->month:I

    iget v9, v15, Landroid/text/format/Time;->monthDay:I

    const/4 v10, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePickerDialog;->show()V

    .line 302
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 279
    .end local v11           #bShowGoTo:Z
    .end local v15           #mTime:Landroid/text/format/Time;
    .end local v17           #selectedTime:J
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 287
    .restart local v11       #bShowGoTo:Z
    :cond_5
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/htc/calendar/AgendaActivity;

    if-eqz v2, :cond_6

    .line 288
    check-cast p0, Lcom/htc/calendar/AgendaActivity;

    goto :goto_2

    .line 289
    :cond_6
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/htc/calendar/WeekActivity;

    if-eqz v2, :cond_7

    .line 290
    check-cast p0, Lcom/htc/calendar/WeekActivity;

    goto :goto_2

    .line 291
    :cond_7
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/htc/calendar/DayActivity;

    if-eqz v2, :cond_3

    .line 292
    check-cast p0, Lcom/htc/calendar/DayActivity;

    goto :goto_2

    .line 216
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x6 -> :sswitch_9
        0x9 -> :sswitch_8
        0xa -> :sswitch_0
        0xb -> :sswitch_3
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_2
        0x1e -> :sswitch_4
    .end sparse-switch
.end method

.method public static onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .locals 11
    .parameter "activity"
    .parameter "menu"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x6

    const/16 v8, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    const/16 v6, 0x15

    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->isShowMeModuleExist(Landroid/content/Context;)Z

    move-result v7

    invoke-interface {p1, v6, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 119
    instance-of v6, p0, Lcom/htc/calendar/CalendarCarouselActivity;

    if-eqz v6, :cond_0

    .line 120
    check-cast p0, Lcom/htc/calendar/CalendarCarouselActivity;

    .end local p0
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    .line 121
    .restart local p0
    if-nez p0, :cond_0

    .line 123
    const-string v4, "MenuHelper"

    const-string v5, "onPrepareOptionsMenu, getCurrentActivity() == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 128
    :cond_0
    instance-of v6, p0, Lcom/htc/calendar/EventInfoActivity;

    if-nez v6, :cond_1

    instance-of v6, p0, Lcom/htc/calendar/MeetingInvitationActivity;

    if-eqz v6, :cond_3

    .line 129
    :cond_1
    invoke-interface {p1, v9, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 130
    invoke-interface {p1, v9, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 142
    :goto_1
    instance-of v6, p0, Lcom/htc/calendar/MeetingInvitationActivity;

    if-eqz v6, :cond_4

    .line 143
    invoke-interface {p1, v8, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 144
    invoke-interface {p1, v8, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 155
    :goto_2
    instance-of v6, p0, Lcom/htc/calendar/MonthActivity;

    if-nez v6, :cond_2

    instance-of v6, p0, Lcom/htc/calendar/WeekActivity;

    if-nez v6, :cond_2

    instance-of v6, p0, Lcom/htc/calendar/DayActivity;

    if-eqz v6, :cond_7

    :cond_2
    move v1, v5

    .line 160
    .local v1, bShowGoTo:Z
    :goto_3
    invoke-interface {p1, v10, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 161
    invoke-interface {p1, v10, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    .line 132
    .end local v1           #bShowGoTo:Z
    :cond_3
    const/16 v6, 0x12

    invoke-interface {p1, v6, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 133
    const/16 v6, 0x12

    invoke-interface {p1, v6, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 134
    const/16 v6, 0x13

    invoke-interface {p1, v6, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 135
    const/16 v6, 0x13

    invoke-interface {p1, v6, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 136
    invoke-interface {p1, v9, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 137
    invoke-interface {p1, v9, v5}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_1

    .line 146
    :cond_4
    invoke-static {p0}, Lcom/htc/calendar/Utils;->getExchangeLoginName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, exchgAcntName:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/calendar/Utils;->isGoogleLogin(Landroid/content/Context;)Z

    move-result v0

    .line 148
    .local v0, bIsGoogleLogin:Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v2, v5

    .line 149
    .local v2, bShowSyncCalendars:Z
    :goto_4
    invoke-interface {p1, v8, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 150
    invoke-interface {p1, v8, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 151
    invoke-interface {p1, v8, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 152
    invoke-interface {p1, v8, v5}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_2

    .end local v2           #bShowSyncCalendars:Z
    :cond_6
    move v2, v4

    .line 148
    goto :goto_4

    .end local v0           #bIsGoogleLogin:Z
    .end local v3           #exchgAcntName:Ljava/lang/String;
    :cond_7
    move v1, v4

    .line 155
    goto :goto_3
.end method
