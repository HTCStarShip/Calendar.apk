.class Lcom/htc/calendar/EventInfoActivity$10;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/EventInfoActivity;->checkIsAssociatedNote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2931
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$10;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2933
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity$10;->this$0:Lcom/htc/calendar/EventInfoActivity;

    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$10;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/EventInfoActivity;->isAssociatedNote()Z

    move-result v2

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mIsAssociatedNote:Z
    invoke-static {v1, v2}, Lcom/htc/calendar/EventInfoActivity;->access$4602(Lcom/htc/calendar/EventInfoActivity;Z)Z

    .line 2934
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity$10;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mIsAssociatedNote:Z
    invoke-static {v1}, Lcom/htc/calendar/EventInfoActivity;->access$4600(Lcom/htc/calendar/EventInfoActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2935
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity$10;->this$0:Lcom/htc/calendar/EventInfoActivity;

    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$10;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->getAssociatedNoteUri()Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/calendar/EventInfoActivity;->access$4800(Lcom/htc/calendar/EventInfoActivity;)Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mNoteUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/htc/calendar/EventInfoActivity;->access$4702(Lcom/htc/calendar/EventInfoActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2937
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity$10;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/calendar/EventInfoActivity;->access$2300(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2938
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity$10;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/calendar/EventInfoActivity;->access$2300(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2939
    return-void
.end method
