.class Lcom/htc/calendar/SetDefaultCalendarReceiver$1;
.super Ljava/lang/Object;
.source "SetDefaultCalendarReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/SetDefaultCalendarReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/SetDefaultCalendarReceiver;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/calendar/SetDefaultCalendarReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/calendar/SetDefaultCalendarReceiver$1;->this$0:Lcom/htc/calendar/SetDefaultCalendarReceiver;

    iput-object p2, p0, Lcom/htc/calendar/SetDefaultCalendarReceiver$1;->val$c:Landroid/content/Context;

    iput-object p3, p0, Lcom/htc/calendar/SetDefaultCalendarReceiver$1;->val$i:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/calendar/SetDefaultCalendarReceiver$1;->this$0:Lcom/htc/calendar/SetDefaultCalendarReceiver;

    iget-object v1, p0, Lcom/htc/calendar/SetDefaultCalendarReceiver$1;->val$c:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/calendar/SetDefaultCalendarReceiver$1;->val$i:Landroid/content/Intent;

    #calls: Lcom/htc/calendar/SetDefaultCalendarReceiver;->doCalendarUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/htc/calendar/SetDefaultCalendarReceiver;->access$000(Lcom/htc/calendar/SetDefaultCalendarReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 22
    return-void
.end method
