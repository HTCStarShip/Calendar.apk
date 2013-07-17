.class Lcom/htc/calendar/AlertActivity$3;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/AlertActivity;->onStop()V
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
    .line 328
    iput-object p1, p0, Lcom/htc/calendar/AlertActivity$3;->this$0:Lcom/htc/calendar/AlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity$3;->this$0:Lcom/htc/calendar/AlertActivity;

    invoke-static {v0}, Lcom/htc/calendar/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 331
    return-void
.end method
