.class Lcom/htc/calendar/EditEvent$5;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/EditEvent;->doResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;

.field final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EditEvent;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1844
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$5;->this$0:Lcom/htc/calendar/EditEvent;

    iput-object p2, p0, Lcom/htc/calendar/EditEvent$5;->val$items:[Ljava/lang/CharSequence;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 1848
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$5;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v0, p0, Lcom/htc/calendar/EditEvent$5;->val$items:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    check-cast v0, Lcom/htc/calendar/ItemValue;

    invoke-virtual {v0}, Lcom/htc/calendar/ItemValue;->getId()I

    move-result v0

    #setter for: Lcom/htc/calendar/EditEvent;->mModification:I
    invoke-static {v1, v0}, Lcom/htc/calendar/EditEvent;->access$6102(Lcom/htc/calendar/EditEvent;I)I

    .line 1849
    const-string v0, "EditEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/EditEvent$5;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mModification:I
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$6100(Lcom/htc/calendar/EditEvent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$5;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mModification:I
    invoke-static {v0}, Lcom/htc/calendar/EditEvent;->access$6100(Lcom/htc/calendar/EditEvent;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$5;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/calendar/EditEvent;->access$1200(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1867
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$5;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/htc/calendar/EditEvent;->access$500(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1871
    :cond_0
    :goto_0
    return-void

    .line 1868
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$5;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mModification:I
    invoke-static {v0}, Lcom/htc/calendar/EditEvent;->access$6100(Lcom/htc/calendar/EditEvent;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$5;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v0}, Lcom/htc/calendar/EditEvent;->access$200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcSpinner;->setEnabled(Z)V

    goto :goto_0
.end method
