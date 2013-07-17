.class Lcom/htc/calendar/widget/ComposeTitle$3;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/widget/ComposeTitle;->setMailSapphireUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$3;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$3;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$500(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 614
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$3;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->getContacts(I)V

    .line 616
    :cond_0
    return-void
.end method
