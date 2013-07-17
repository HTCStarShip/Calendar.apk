.class Lcom/htc/calendar/AlertActivity$2;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/AlertActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AlertActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/AlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/htc/calendar/AlertActivity$2;->this$0:Lcom/htc/calendar/AlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity$2;->this$0:Lcom/htc/calendar/AlertActivity;

    #calls: Lcom/htc/calendar/AlertActivity;->doQuery()V
    invoke-static {v0}, Lcom/htc/calendar/AlertActivity;->access$500(Lcom/htc/calendar/AlertActivity;)V

    .line 310
    const/4 v0, 0x0

    return v0
.end method
