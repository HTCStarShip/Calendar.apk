.class Lcom/htc/calendar/EditEvent$14;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 4684
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$14;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v1, 0x1

    .line 4686
    if-nez p3, :cond_0

    move v0, v1

    .line 4688
    .local v0, bDateChangeEnabe:Z
    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$14;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1200(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4689
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$14;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$500(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4691
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$14;->this$0:Lcom/htc/calendar/EditEvent;

    #setter for: Lcom/htc/calendar/EditEvent;->mSelectedRepeatItem:I
    invoke-static {v2, p3}, Lcom/htc/calendar/EditEvent;->access$8102(Lcom/htc/calendar/EditEvent;I)I

    .line 4692
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$14;->this$0:Lcom/htc/calendar/EditEvent;

    #setter for: Lcom/htc/calendar/EditEvent;->mbIsSelected:Z
    invoke-static {v2, v1}, Lcom/htc/calendar/EditEvent;->access$8202(Lcom/htc/calendar/EditEvent;Z)Z

    .line 4704
    return-void

    .line 4686
    .end local v0           #bDateChangeEnabe:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4708
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method
