.class Lcom/htc/calendar/EditEvent$9;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/EditEvent;->showTimezoneDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;

.field final synthetic val$lv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EditEvent;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2314
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$9;->this$0:Lcom/htc/calendar/EditEvent;

    iput-object p2, p0, Lcom/htc/calendar/EditEvent$9;->val$lv:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2317
    const/16 v1, 0x17

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/htc/calendar/EditEvent$9;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/EditEvent$9;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mTimezoneFooterView:Lcom/htc/widget/HtcListItem;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$6300(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcListItem;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2319
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$9;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v2, p0, Lcom/htc/calendar/EditEvent$9;->val$lv:Landroid/widget/ListView;

    #calls: Lcom/htc/calendar/EditEvent;->showAllTimezone(Landroid/widget/ListView;)V
    invoke-static {v1, v2}, Lcom/htc/calendar/EditEvent;->access$6400(Lcom/htc/calendar/EditEvent;Landroid/widget/ListView;)V

    .line 2324
    :cond_0
    :goto_0
    return v0

    .line 2321
    :cond_1
    const/16 v1, 0x54

    if-eq p2, v1, :cond_0

    .line 2324
    const/4 v0, 0x0

    goto :goto_0
.end method
