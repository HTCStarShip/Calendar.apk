.class Lcom/htc/calendar/AlertActivity$5;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AlertActivity;
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
    .line 397
    iput-object p1, p0, Lcom/htc/calendar/AlertActivity$5;->this$0:Lcom/htc/calendar/AlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/htc/calendar/AlertActivity$5;->this$0:Lcom/htc/calendar/AlertActivity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/htc/calendar/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 401
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 404
    iget-object v1, p0, Lcom/htc/calendar/AlertActivity$5;->this$0:Lcom/htc/calendar/AlertActivity;

    #calls: Lcom/htc/calendar/AlertActivity;->dismissAllAlarms()V
    invoke-static {v1}, Lcom/htc/calendar/AlertActivity;->access$900(Lcom/htc/calendar/AlertActivity;)V

    .line 406
    iget-object v1, p0, Lcom/htc/calendar/AlertActivity$5;->this$0:Lcom/htc/calendar/AlertActivity;

    invoke-virtual {v1}, Lcom/htc/calendar/AlertActivity;->finish()V

    .line 407
    return-void
.end method
