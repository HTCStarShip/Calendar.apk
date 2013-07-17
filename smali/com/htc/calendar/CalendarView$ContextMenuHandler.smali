.class Lcom/htc/calendar/CalendarView$ContextMenuHandler;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/htc/calendar/CalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 4030
    iput-object p1, p0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/calendar/CalendarView;Lcom/htc/calendar/CalendarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4030
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarView$ContextMenuHandler;-><init>(Lcom/htc/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 27
    .parameter "item"

    .prologue
    .line 4032
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-virtual {v10}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Ljava/lang/Long;)V

    .line 4033
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4152
    :pswitch_0
    const/4 v3, 0x0

    .line 4155
    :goto_0
    return v3

    .line 4035
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    iget-wide v8, v3, Lcom/htc/calendar/Event;->id:J

    .line 4037
    .local v8, id:J
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 4038
    .local v19, eventUri:Landroid/net/Uri;
    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4039
    .local v20, intent:Landroid/content/Intent;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    const-class v10, Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    iget-boolean v3, v3, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v3, :cond_0

    .line 4043
    new-instance v24, Landroid/text/format/Time;

    invoke-direct/range {v24 .. v24}, Landroid/text/format/Time;-><init>()V

    .line 4044
    .local v24, time:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    iget-wide v10, v3, Lcom/htc/calendar/Event;->startMillis:J

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 4045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/htc/calendar/Event;->startMillis:J

    .line 4047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    iget-wide v10, v3, Lcom/htc/calendar/Event;->endMillis:J

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 4048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/htc/calendar/Event;->endMillis:J

    .line 4051
    .end local v24           #time:Landroid/text/format/Time;
    :cond_0
    const-string v3, "beginTime"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v10}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v10

    iget-wide v10, v10, Lcom/htc/calendar/Event;->startMillis:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4052
    const-string v3, "endTime"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v10}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v10

    iget-wide v10, v10, Lcom/htc/calendar/Event;->endMillis:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4053
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 4155
    .end local v8           #id:J
    .end local v19           #eventUri:Landroid/net/Uri;
    .end local v20           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 4058
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    iget-wide v8, v3, Lcom/htc/calendar/Event;->id:J

    .line 4060
    .restart local v8       #id:J
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 4061
    .restart local v19       #eventUri:Landroid/net/Uri;
    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4062
    .restart local v20       #intent:Landroid/content/Intent;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    const-class v10, Lcom/htc/calendar/EditEvent;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4065
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    iget-boolean v3, v3, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v3, :cond_2

    .line 4066
    new-instance v24, Landroid/text/format/Time;

    invoke-direct/range {v24 .. v24}, Landroid/text/format/Time;-><init>()V

    .line 4067
    .restart local v24       #time:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    iget-wide v10, v3, Lcom/htc/calendar/Event;->startMillis:J

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 4068
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/htc/calendar/Event;->startMillis:J

    .line 4070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    iget-wide v10, v3, Lcom/htc/calendar/Event;->endMillis:J

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 4071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/htc/calendar/Event;->endMillis:J

    .line 4074
    .end local v24           #time:Landroid/text/format/Time;
    :cond_2
    const-string v3, "beginTime"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v10}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v10

    iget-wide v10, v10, Lcom/htc/calendar/Event;->startMillis:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4075
    const-string v3, "endTime"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v10}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v10

    iget-wide v10, v10, Lcom/htc/calendar/Event;->endMillis:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4076
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 4078
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarActivity;->getCurrentView()Lcom/htc/calendar/CalendarView;

    move-result-object v25

    .line 4079
    .local v25, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/calendar/CalendarView;->clearCachedEvents()V

    .line 4081
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarActivity;->getNextView()Lcom/htc/calendar/CalendarView;

    move-result-object v26

    .line 4082
    .local v26, viewNext:Lcom/htc/calendar/CalendarView;
    invoke-virtual/range {v26 .. v26}, Lcom/htc/calendar/CalendarView;->clearCachedEvents()V

    goto/16 :goto_1

    .line 4087
    .end local v8           #id:J
    .end local v19           #eventUri:Landroid/net/Uri;
    .end local v20           #intent:Landroid/content/Intent;
    .end local v25           #view:Lcom/htc/calendar/CalendarView;
    .end local v26           #viewNext:Lcom/htc/calendar/CalendarView;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v22

    .line 4088
    .local v22, startMillis:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    const-class v10, Lcom/htc/calendar/DayActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v0, v22

    invoke-static {v3, v10, v0, v1}, Lcom/htc/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 4092
    .end local v22           #startMillis:J
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v22

    .line 4093
    .restart local v22       #startMillis:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    const-class v10, Lcom/htc/calendar/AgendaActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v0, v22

    invoke-static {v3, v10, v0, v1}, Lcom/htc/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 4097
    .end local v22           #startMillis:J
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v22

    .line 4098
    .restart local v22       #startMillis:J
    const-wide/32 v10, 0x36ee80

    add-long v17, v22, v10

    .line 4099
    .local v17, endMillis:J
    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4100
    .restart local v20       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    const-class v10, Lcom/htc/calendar/EditEvent;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4101
    const-string v3, "beginTime"

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4102
    const-string v3, "endTime"

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4103
    const-string v3, "allDay"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-boolean v10, v10, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/htc/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 4106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarActivity;->getCurrentView()Lcom/htc/calendar/CalendarView;

    move-result-object v25

    .line 4107
    .restart local v25       #view:Lcom/htc/calendar/CalendarView;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/calendar/CalendarView;->clearCachedEvents()V

    .line 4109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarActivity;->getNextView()Lcom/htc/calendar/CalendarView;

    move-result-object v26

    .line 4110
    .restart local v26       #viewNext:Lcom/htc/calendar/CalendarView;
    invoke-virtual/range {v26 .. v26}, Lcom/htc/calendar/CalendarView;->clearCachedEvents()V

    goto/16 :goto_1

    .line 4115
    .end local v17           #endMillis:J
    .end local v20           #intent:Landroid/content/Intent;
    .end local v22           #startMillis:J
    .end local v25           #view:Lcom/htc/calendar/CalendarView;
    .end local v26           #viewNext:Lcom/htc/calendar/CalendarView;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v21

    .line 4117
    .local v21, selectedEvent:Lcom/htc/calendar/Event;
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/htc/calendar/Event;->startMillis:J

    .line 4118
    .local v4, begin:J
    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/htc/calendar/Event;->endMillis:J

    .line 4119
    .local v6, end:J
    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/htc/calendar/Event;->id:J

    .line 4120
    .restart local v8       #id:J
    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v3, :cond_3

    .line 4121
    new-instance v24, Landroid/text/format/Time;

    invoke-direct/range {v24 .. v24}, Landroid/text/format/Time;-><init>()V

    .line 4122
    .restart local v24       #time:Landroid/text/format/Time;
    const-wide/16 v10, 0x0

    invoke-static {v4, v5, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 4123
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 4125
    const-wide/16 v10, 0x0

    invoke-static {v6, v7, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 4126
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 4128
    .end local v24           #time:Landroid/text/format/Time;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1500(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/DeleteEventHelper;

    move-result-object v3

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/htc/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 4130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarActivity;->getCurrentView()Lcom/htc/calendar/CalendarView;

    move-result-object v25

    .line 4131
    .restart local v25       #view:Lcom/htc/calendar/CalendarView;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/calendar/CalendarView;->clearCachedEvents()V

    .line 4133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarActivity;->getNextView()Lcom/htc/calendar/CalendarView;

    move-result-object v26

    .line 4134
    .restart local v26       #viewNext:Lcom/htc/calendar/CalendarView;
    invoke-virtual/range {v26 .. v26}, Lcom/htc/calendar/CalendarView;->clearCachedEvents()V

    goto/16 :goto_1

    .line 4142
    .end local v4           #begin:J
    .end local v6           #end:J
    .end local v8           #id:J
    .end local v21           #selectedEvent:Lcom/htc/calendar/Event;
    .end local v25           #view:Lcom/htc/calendar/CalendarView;
    .end local v26           #viewNext:Lcom/htc/calendar/CalendarView;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;

    move-result-object v21

    .line 4144
    .restart local v21       #selectedEvent:Lcom/htc/calendar/Event;
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/htc/calendar/Event;->startMillis:J

    .line 4145
    .restart local v4       #begin:J
    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/htc/calendar/Event;->endMillis:J

    .line 4146
    .restart local v6       #end:J
    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/htc/calendar/Event;->id:J

    .line 4147
    .restart local v8       #id:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v10, v3, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    move-wide v11, v8

    move-wide v13, v4

    move-wide v15, v6

    invoke-static/range {v10 .. v16}, Lcom/htc/calendar/VCalendar;->launchShareVCalMenu(Landroid/app/Activity;JJJ)V

    goto/16 :goto_1

    .line 4033
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
