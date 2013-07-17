.class Lcom/htc/calendar/MonthView$ContextMenuHandler;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/MonthView;


# direct methods
.method private constructor <init>(Lcom/htc/calendar/MonthView;)V
    .locals 0
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/htc/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/htc/calendar/MonthView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/calendar/MonthView;Lcom/htc/calendar/MonthView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/htc/calendar/MonthView$ContextMenuHandler;-><init>(Lcom/htc/calendar/MonthView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 679
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 712
    :pswitch_0
    const/4 v7, 0x0

    .line 715
    :cond_0
    :goto_0
    return v7

    .line 683
    :pswitch_1
    iget-object v8, p0, Lcom/htc/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;
    invoke-static {v8}, Lcom/htc/calendar/MonthView;->access$1900(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/MonthActivity;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 684
    iget-object v8, p0, Lcom/htc/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;
    invoke-static {v8}, Lcom/htc/calendar/MonthView;->access$1900(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/MonthActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/calendar/MonthActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 686
    .local v0, carouseActivity:Lcom/htc/widget/CarouselActivity;
    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v1

    .line 688
    .local v1, carouselHost:Lcom/htc/widget/CarouselHost;
    if-eqz v1, :cond_0

    .line 689
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 690
    const-string v8, "Day"

    invoke-virtual {v1, v8}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :cond_1
    const-string v8, "Agenda"

    invoke-virtual {v1, v8}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    .end local v0           #carouseActivity:Lcom/htc/widget/CarouselActivity;
    .end local v1           #carouselHost:Lcom/htc/widget/CarouselHost;
    :pswitch_2
    iget-object v8, p0, Lcom/htc/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/htc/calendar/MonthView;

    invoke-virtual {v8}, Lcom/htc/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v5

    .line 703
    .local v5, startMillis:J
    const-wide/32 v8, 0x36ee80

    add-long v2, v5, v8

    .line 704
    .local v2, endMillis:J
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .local v4, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/htc/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;
    invoke-static {v8}, Lcom/htc/calendar/MonthView;->access$1900(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/MonthActivity;

    move-result-object v8

    const-class v9, Lcom/htc/calendar/EditEvent;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v8, "beginTime"

    invoke-virtual {v4, v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 707
    const-string v8, "endTime"

    invoke-virtual {v4, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 708
    iget-object v8, p0, Lcom/htc/calendar/MonthView$ContextMenuHandler;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;
    invoke-static {v8}, Lcom/htc/calendar/MonthView;->access$1900(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/MonthActivity;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/htc/calendar/MonthActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 679
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
