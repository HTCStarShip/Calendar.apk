.class Lcom/htc/calendar/SearchResultActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/SearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/SearchResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/calendar/SearchResultActivity$1;->this$0:Lcom/htc/calendar/SearchResultActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$1;->this$0:Lcom/htc/calendar/SearchResultActivity;

    #calls: Lcom/htc/calendar/SearchResultActivity;->clearLastQueryTime()V
    invoke-static {v1}, Lcom/htc/calendar/SearchResultActivity;->access$300(Lcom/htc/calendar/SearchResultActivity;)V

    .line 129
    iget-object v1, p0, Lcom/htc/calendar/SearchResultActivity$1;->this$0:Lcom/htc/calendar/SearchResultActivity;

    #calls: Lcom/htc/calendar/SearchResultActivity;->renewCursor()V
    invoke-static {v1}, Lcom/htc/calendar/SearchResultActivity;->access$400(Lcom/htc/calendar/SearchResultActivity;)V

    .line 131
    :cond_1
    return-void
.end method
