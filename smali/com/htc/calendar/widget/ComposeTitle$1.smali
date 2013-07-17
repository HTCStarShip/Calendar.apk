.class Lcom/htc/calendar/widget/ComposeTitle$1;
.super Lcom/htc/calendar/widget/ComposeTitle$OnComposeFocusChangeListener;
.source "ComposeTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$1;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle$OnComposeFocusChangeListener;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 288
    invoke-super {p0, p1, p2}, Lcom/htc/calendar/widget/ComposeTitle$OnComposeFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 289
    if-eqz p2, :cond_0

    .line 290
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$1;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mLastView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/htc/calendar/widget/ComposeTitle;->access$102(Lcom/htc/calendar/widget/ComposeTitle;Landroid/view/View;)Landroid/view/View;

    .line 291
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/htc/calendar/widget/ComposeTitle$1$1;

    invoke-direct {v1, p0}, Lcom/htc/calendar/widget/ComposeTitle$1$1;-><init>(Lcom/htc/calendar/widget/ComposeTitle$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    :cond_0
    return-void
.end method
