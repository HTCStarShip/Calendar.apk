.class final Lcom/htc/calendar/AlertService$ServiceHandler;
.super Landroid/os/Handler;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AlertService;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/AlertService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 522
    iput-object p1, p0, Lcom/htc/calendar/AlertService$ServiceHandler;->this$0:Lcom/htc/calendar/AlertService;

    .line 523
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 524
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/calendar/AlertService$ServiceHandler;->this$0:Lcom/htc/calendar/AlertService;

    invoke-virtual {v0, p1}, Lcom/htc/calendar/AlertService;->processMessage(Landroid/os/Message;)V

    .line 531
    iget-object v0, p0, Lcom/htc/calendar/AlertService$ServiceHandler;->this$0:Lcom/htc/calendar/AlertService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/htc/calendar/AlertReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 532
    return-void
.end method
