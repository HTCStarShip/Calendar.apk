.class Lcom/htc/calendar/MonthActivity$UIHandler;
.super Landroid/os/Handler;
.source "MonthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MonthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/calendar/MonthActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/MonthActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 564
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 565
    iput-object p2, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->mContext:Landroid/content/Context;

    .line 566
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 570
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 571
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/htc/calendar/MonthActivity;

    .line 572
    .local v0, context:Lcom/htc/calendar/MonthActivity;
    if-nez v0, :cond_1

    .line 602
    .end local v0           #context:Lcom/htc/calendar/MonthActivity;
    :cond_0
    :goto_0
    return-void

    .line 575
    .restart local v0       #context:Lcom/htc/calendar/MonthActivity;
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    const/high16 v2, 0x7f04

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    #setter for: Lcom/htc/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;
    invoke-static {v1, v2}, Lcom/htc/calendar/MonthActivity;->access$502(Lcom/htc/calendar/MonthActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 576
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    const v2, 0x7f040001

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    #setter for: Lcom/htc/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;
    invoke-static {v1, v2}, Lcom/htc/calendar/MonthActivity;->access$602(Lcom/htc/calendar/MonthActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 577
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    const v2, 0x7f040006

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    #setter for: Lcom/htc/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;
    invoke-static {v1, v2}, Lcom/htc/calendar/MonthActivity;->access$702(Lcom/htc/calendar/MonthActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 578
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    const v2, 0x7f040007

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    #setter for: Lcom/htc/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;
    invoke-static {v1, v2}, Lcom/htc/calendar/MonthActivity;->access$802(Lcom/htc/calendar/MonthActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 580
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/calendar/MonthActivity;->access$500(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    iget-object v2, v2, Lcom/htc/calendar/MonthActivity;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 581
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/calendar/MonthActivity;->access$600(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    iget-object v2, v2, Lcom/htc/calendar/MonthActivity;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 582
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/calendar/MonthActivity;->access$700(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    iget-object v2, v2, Lcom/htc/calendar/MonthActivity;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 583
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/calendar/MonthActivity;->access$800(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    iget-object v2, v2, Lcom/htc/calendar/MonthActivity;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 584
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    iget-object v1, v1, Lcom/htc/calendar/MonthActivity;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

    new-instance v2, Lcom/htc/calendar/MonthActivity$UIHandler$1;

    invoke-direct {v2, p0}, Lcom/htc/calendar/MonthActivity$UIHandler$1;-><init>(Lcom/htc/calendar/MonthActivity$UIHandler;)V

    invoke-virtual {v1, v2}, Lcom/htc/calendar/ManipulateInterpolator;->setOnInterpolatorListener(Lcom/htc/calendar/ManipulateInterpolator$InterpolatorListener;)V

    .line 599
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/calendar/MonthActivity;->access$500(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    #getter for: Lcom/htc/calendar/MonthActivity;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/calendar/MonthActivity;->access$900(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 600
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$UIHandler;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/calendar/MonthActivity;->access$700(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    #getter for: Lcom/htc/calendar/MonthActivity;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/calendar/MonthActivity;->access$900(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0
.end method
