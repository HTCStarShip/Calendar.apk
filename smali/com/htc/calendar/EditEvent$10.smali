.class Lcom/htc/calendar/EditEvent$10;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 2331
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$10;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2333
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$10;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mTimezoneFooterView:Lcom/htc/widget/HtcListItem;
    invoke-static {v1}, Lcom/htc/calendar/EditEvent;->access$6300(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcListItem;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 2334
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$10;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mTimezoneDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/htc/calendar/EditEvent;->access$6500(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2336
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$10;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v2, p0, Lcom/htc/calendar/EditEvent$10;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mTimezoneDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$6500(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    #calls: Lcom/htc/calendar/EditEvent;->showAllTimezone(Landroid/widget/ListView;)V
    invoke-static {v1, v2}, Lcom/htc/calendar/EditEvent;->access$6400(Lcom/htc/calendar/EditEvent;Landroid/widget/ListView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2346
    :cond_0
    :goto_0
    return-void

    .line 2337
    :catch_0
    move-exception v0

    .line 2338
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2341
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/EditEvent$10;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;
    invoke-static {v1}, Lcom/htc/calendar/EditEvent;->access$6600(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/TimezoneAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/calendar/TimezoneAdapter;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 2342
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$10;->this$0:Lcom/htc/calendar/EditEvent;

    #calls: Lcom/htc/calendar/EditEvent;->setTimezone(I)V
    invoke-static {v1, p3}, Lcom/htc/calendar/EditEvent;->access$6700(Lcom/htc/calendar/EditEvent;I)V

    .line 2343
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$10;->this$0:Lcom/htc/calendar/EditEvent;

    #calls: Lcom/htc/calendar/EditEvent;->updateHomeTime()V
    invoke-static {v1}, Lcom/htc/calendar/EditEvent;->access$900(Lcom/htc/calendar/EditEvent;)V

    .line 2344
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$10;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mTimezoneDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/htc/calendar/EditEvent;->access$6500(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    goto :goto_0
.end method
