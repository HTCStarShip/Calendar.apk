.class Lcom/htc/calendar/DeleteEventHelper$1;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcom/htc/calendar/DeleteEventHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mExitWhenDone:Z
    invoke-static {v0}, Lcom/htc/calendar/DeleteEventHelper;->access$000(Lcom/htc/calendar/DeleteEventHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/calendar/DeleteEventHelper;->access$100(Lcom/htc/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/calendar/DeleteEventHelper$1$1;

    invoke-direct {v1, p0}, Lcom/htc/calendar/DeleteEventHelper$1$1;-><init>(Lcom/htc/calendar/DeleteEventHelper$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method
