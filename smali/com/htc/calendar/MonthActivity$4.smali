.class Lcom/htc/calendar/MonthActivity$4;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MonthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/MonthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity$4;->this$0:Lcom/htc/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 554
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$4;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v1}, Lcom/htc/calendar/MonthActivity;->access$400(Lcom/htc/calendar/MonthActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MonthView;

    .line 555
    .local v0, monthView:Lcom/htc/calendar/MonthView;
    invoke-virtual {v0}, Lcom/htc/calendar/MonthView;->animationFinished()V

    .line 556
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 559
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 550
    return-void
.end method
