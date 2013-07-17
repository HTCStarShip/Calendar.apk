.class Lcom/htc/calendar/AlertActivity$6$1;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/AlertActivity$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/calendar/AlertActivity$6;


# direct methods
.method constructor <init>(Lcom/htc/calendar/AlertActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/htc/calendar/AlertActivity$6$1;->this$1:Lcom/htc/calendar/AlertActivity$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity$6$1;->this$1:Lcom/htc/calendar/AlertActivity$6;

    iget-object v0, v0, Lcom/htc/calendar/AlertActivity$6;->this$0:Lcom/htc/calendar/AlertActivity;

    #calls: Lcom/htc/calendar/AlertActivity;->doQuery()V
    invoke-static {v0}, Lcom/htc/calendar/AlertActivity;->access$500(Lcom/htc/calendar/AlertActivity;)V

    .line 452
    return-void
.end method
