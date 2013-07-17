.class Lcom/htc/calendar/CalendarCarouselActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CalendarCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarCarouselActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarCarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/htc/calendar/CalendarCarouselActivity$2;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 821
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.eas.intent.all_sync_finish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity$2;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #calls: Lcom/htc/calendar/CalendarCarouselActivity;->doingUnResponseInvitationQuery()V
    invoke-static {v1}, Lcom/htc/calendar/CalendarCarouselActivity;->access$100(Lcom/htc/calendar/CalendarCarouselActivity;)V

    .line 825
    :cond_0
    return-void
.end method
