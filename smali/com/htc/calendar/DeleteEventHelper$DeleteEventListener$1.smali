.class Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener$1;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;


# direct methods
.method constructor <init>(Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/calendar/DeleteEventHelper;->access$100(Lcom/htc/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/calendar/HtcUtils;->cancelNotification(Landroid/content/Context;)V

    .line 246
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/calendar/DeleteEventHelper;->access$100(Lcom/htc/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/calendar/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 247
    return-void
.end method
