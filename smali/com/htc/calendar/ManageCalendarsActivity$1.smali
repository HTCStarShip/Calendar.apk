.class Lcom/htc/calendar/ManageCalendarsActivity$1;
.super Landroid/os/Handler;
.source "ManageCalendarsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/ManageCalendarsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/ManageCalendarsActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/ManageCalendarsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/htc/calendar/ManageCalendarsActivity$1;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$1;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    #getter for: Lcom/htc/calendar/ManageCalendarsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/calendar/ManageCalendarsActivity;->access$500(Lcom/htc/calendar/ManageCalendarsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$1;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    #getter for: Lcom/htc/calendar/ManageCalendarsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/calendar/ManageCalendarsActivity;->access$500(Lcom/htc/calendar/ManageCalendarsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$1;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    #getter for: Lcom/htc/calendar/ManageCalendarsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/calendar/ManageCalendarsActivity;->access$500(Lcom/htc/calendar/ManageCalendarsActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 461
    :cond_0
    return-void
.end method
