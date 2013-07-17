.class Lcom/htc/calendar/MonthActivity$UIHandler$1;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Lcom/htc/calendar/ManipulateInterpolator$InterpolatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/MonthActivity$UIHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/calendar/MonthActivity$UIHandler;


# direct methods
.method constructor <init>(Lcom/htc/calendar/MonthActivity$UIHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity$UIHandler$1;->this$1:Lcom/htc/calendar/MonthActivity$UIHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterpolatorEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 588
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler$1;->this$1:Lcom/htc/calendar/MonthActivity$UIHandler;

    iget-object v1, v1, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v1}, Lcom/htc/calendar/MonthActivity;->access$400(Lcom/htc/calendar/MonthActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 589
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler$1;->this$1:Lcom/htc/calendar/MonthActivity$UIHandler;

    iget-object v1, v1, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v1}, Lcom/htc/calendar/MonthActivity;->access$400(Lcom/htc/calendar/MonthActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 596
    :cond_1
    return-void
.end method
