.class Lcom/htc/calendar/MeetingInvitationActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MeetingInvitationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MeetingInvitationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/MeetingInvitationActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/MeetingInvitationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/htc/calendar/MeetingInvitationActivity$1;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 574
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.mail.new_mail_notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.EAS_ACCOUNT_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "action.calendars.picker.changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    :cond_0
    const-string v1, "MeetingInvitationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive intent, action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v1, p0, Lcom/htc/calendar/MeetingInvitationActivity$1;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #calls: Lcom/htc/calendar/MeetingInvitationActivity;->startEASQueryInBackground()V
    invoke-static {v1}, Lcom/htc/calendar/MeetingInvitationActivity;->access$1300(Lcom/htc/calendar/MeetingInvitationActivity;)V

    .line 579
    :cond_1
    return-void
.end method
