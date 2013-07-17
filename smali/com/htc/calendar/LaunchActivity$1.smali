.class Lcom/htc/calendar/LaunchActivity$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/LaunchActivity;->loadHtcCalendar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/LaunchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/calendar/LaunchActivity$1;->this$0:Lcom/htc/calendar/LaunchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/htc/calendar/LaunchActivity$checkSyncOnOpenThread;

    iget-object v1, p0, Lcom/htc/calendar/LaunchActivity$1;->this$0:Lcom/htc/calendar/LaunchActivity;

    invoke-direct {v0, v1}, Lcom/htc/calendar/LaunchActivity$checkSyncOnOpenThread;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, checkEasSync:Lcom/htc/calendar/LaunchActivity$checkSyncOnOpenThread;
    invoke-virtual {v0}, Lcom/htc/calendar/LaunchActivity$checkSyncOnOpenThread;->start()V

    .line 101
    return-void
.end method
