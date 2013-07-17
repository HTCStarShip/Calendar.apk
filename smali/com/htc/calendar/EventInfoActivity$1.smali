.class Lcom/htc/calendar/EventInfoActivity$1;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
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
    .line 361
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$1;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity$1;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v0}, Lcom/htc/calendar/EventInfoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity$1;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->updateView_HTC()V
    invoke-static {v0}, Lcom/htc/calendar/EventInfoActivity;->access$000(Lcom/htc/calendar/EventInfoActivity;)V

    goto :goto_0
.end method
