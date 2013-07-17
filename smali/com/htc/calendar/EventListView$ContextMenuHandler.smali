.class Lcom/htc/calendar/EventListView$ContextMenuHandler;
.super Ljava/lang/Object;
.source "EventListView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventListView;


# direct methods
.method private constructor <init>(Lcom/htc/calendar/EventListView;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/calendar/EventListView;Lcom/htc/calendar/EventListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventListView$ContextMenuHandler;-><init>(Lcom/htc/calendar/EventListView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const-wide/16 v2, 0x0

    .line 342
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 395
    :pswitch_0
    const/4 v0, 0x0

    .line 398
    :goto_0
    return v0

    .line 345
    :pswitch_1
    iget-object v0, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventId:J
    invoke-static {v0}, Lcom/htc/calendar/EventListView;->access$600(Lcom/htc/calendar/EventListView;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 398
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 348
    :cond_1
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventId:J
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$600(Lcom/htc/calendar/EventListView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 349
    .local v10, uri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v9, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 350
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "beginTime"

    iget-object v1, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$700(Lcom/htc/calendar/EventListView;)J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 351
    const-string v0, "endTime"

    iget-object v1, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$800(Lcom/htc/calendar/EventListView;)J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 352
    iget-object v0, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/calendar/EventListView;->access$900(Lcom/htc/calendar/EventListView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 357
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #uri:Landroid/net/Uri;
    :pswitch_2
    iget-object v0, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventId:J
    invoke-static {v0}, Lcom/htc/calendar/EventListView;->access$600(Lcom/htc/calendar/EventListView;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 360
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventId:J
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$600(Lcom/htc/calendar/EventListView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 361
    .local v8, eventUri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.EDIT"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .restart local v9       #intent:Landroid/content/Intent;
    invoke-virtual {v9, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 363
    iget-object v0, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/calendar/EventListView;->access$300(Lcom/htc/calendar/EventListView;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/htc/calendar/EditEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v0, "beginTime"

    iget-object v1, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$700(Lcom/htc/calendar/EventListView;)J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 365
    const-string v0, "endTime"

    iget-object v1, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$800(Lcom/htc/calendar/EventListView;)J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 366
    iget-object v0, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/calendar/EventListView;->access$900(Lcom/htc/calendar/EventListView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 371
    .end local v8           #eventUri:Landroid/net/Uri;
    .end local v9           #intent:Landroid/content/Intent;
    :pswitch_3
    iget-object v0, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventId:J
    invoke-static {v0}, Lcom/htc/calendar/EventListView;->access$600(Lcom/htc/calendar/EventListView;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;
    invoke-static {v0}, Lcom/htc/calendar/EventListView;->access$1000(Lcom/htc/calendar/EventListView;)Lcom/htc/calendar/DeleteEventHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$700(Lcom/htc/calendar/EventListView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$800(Lcom/htc/calendar/EventListView;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventId:J
    invoke-static {v5}, Lcom/htc/calendar/EventListView;->access$600(Lcom/htc/calendar/EventListView;)J

    move-result-wide v5

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/DeleteEventHelper;->delete(JJJI)V

    goto/16 :goto_1

    .line 387
    :pswitch_4
    iget-object v0, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventId:J
    invoke-static {v0}, Lcom/htc/calendar/EventListView;->access$600(Lcom/htc/calendar/EventListView;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/calendar/EventListView;->access$900(Lcom/htc/calendar/EventListView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventId:J
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$600(Lcom/htc/calendar/EventListView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$700(Lcom/htc/calendar/EventListView;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/calendar/EventListView$ContextMenuHandler;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J
    invoke-static {v5}, Lcom/htc/calendar/EventListView;->access$800(Lcom/htc/calendar/EventListView;)J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/htc/calendar/VCalendar;->launchShareVCalMenu(Landroid/app/Activity;JJJ)V

    goto/16 :goto_1

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
