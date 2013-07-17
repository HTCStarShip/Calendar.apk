.class Lcom/htc/calendar/widget/ComposeTitle$DataHandler;
.super Landroid/os/Handler;
.source "ComposeTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method private constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 2714
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$DataHandler;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;Lcom/htc/calendar/widget/ComposeTitle$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2714
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/ComposeTitle$DataHandler;-><init>(Lcom/htc/calendar/widget/ComposeTitle;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 2716
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2717
    .local v0, email:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2718
    .local v1, mode:I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2732
    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle$DataHandler;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/calendar/widget/ComposeTitle;->access$1400(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)V

    .line 2733
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2735
    :goto_0
    return-void

    .line 2720
    :pswitch_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/calendar/widget/ComposeTitle$DataHandler$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/htc/calendar/widget/ComposeTitle$DataHandler$1;-><init>(Lcom/htc/calendar/widget/ComposeTitle$DataHandler;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2728
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2718
    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
    .end packed-switch
.end method
