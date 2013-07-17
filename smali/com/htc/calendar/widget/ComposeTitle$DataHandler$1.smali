.class Lcom/htc/calendar/widget/ComposeTitle$DataHandler$1;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/widget/ComposeTitle$DataHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/calendar/widget/ComposeTitle$DataHandler;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle$DataHandler;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2720
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$DataHandler$1;->this$1:Lcom/htc/calendar/widget/ComposeTitle$DataHandler;

    iput-object p2, p0, Lcom/htc/calendar/widget/ComposeTitle$DataHandler$1;->val$email:Ljava/lang/String;

    iput p3, p0, Lcom/htc/calendar/widget/ComposeTitle$DataHandler$1;->val$mode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$DataHandler$1;->this$1:Lcom/htc/calendar/widget/ComposeTitle$DataHandler;

    iget-object v0, v0, Lcom/htc/calendar/widget/ComposeTitle$DataHandler;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$500(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2723
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2724
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$DataHandler$1;->this$1:Lcom/htc/calendar/widget/ComposeTitle$DataHandler;

    iget-object v0, v0, Lcom/htc/calendar/widget/ComposeTitle$DataHandler;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$DataHandler$1;->val$email:Ljava/lang/String;

    iget v2, p0, Lcom/htc/calendar/widget/ComposeTitle$DataHandler$1;->val$mode:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/calendar/widget/ComposeTitle;->getContactInfo(Ljava/lang/String;I)V

    .line 2726
    :cond_0
    return-void
.end method
