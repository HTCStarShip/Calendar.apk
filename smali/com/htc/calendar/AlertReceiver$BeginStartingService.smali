.class Lcom/htc/calendar/AlertReceiver$BeginStartingService;
.super Ljava/lang/Thread;
.source "AlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeginStartingService"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/calendar/AlertReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/AlertReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/htc/calendar/AlertReceiver$BeginStartingService;->this$0:Lcom/htc/calendar/AlertReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/htc/calendar/AlertReceiver$BeginStartingService;->mContext:Landroid/content/Context;

    .line 196
    iput-object p3, p0, Lcom/htc/calendar/AlertReceiver$BeginStartingService;->mIntent:Landroid/content/Intent;

    .line 197
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 201
    :try_start_0
    const-string v1, "AlertReceiver"

    const-string v2, "beginStartingService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/htc/calendar/AlertReceiver$BeginStartingService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/calendar/AlertReceiver$BeginStartingService;->mIntent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/htc/calendar/AlertReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AlertReceiver"

    const-string v2, "BeginStartingService() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
