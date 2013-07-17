.class Lcom/htc/calendar/AgendaActivity$1;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AgendaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/AgendaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/calendar/AgendaActivity$1;->this$0:Lcom/htc/calendar/AgendaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 98
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity$1;->this$0:Lcom/htc/calendar/AgendaActivity;

    #getter for: Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/AgendaActivity;->access$000(Lcom/htc/calendar/AgendaActivity;)Landroid/text/format/Time;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 99
    .local v0, time:J
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity$1;->this$0:Lcom/htc/calendar/AgendaActivity;

    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/htc/calendar/AgendaActivity$1;->this$0:Lcom/htc/calendar/AgendaActivity;

    #getter for: Lcom/htc/calendar/AgendaActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/calendar/AgendaActivity;->access$100(Lcom/htc/calendar/AgendaActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;
    invoke-static {v2, v3}, Lcom/htc/calendar/AgendaActivity;->access$002(Lcom/htc/calendar/AgendaActivity;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 100
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity$1;->this$0:Lcom/htc/calendar/AgendaActivity;

    #getter for: Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/AgendaActivity;->access$000(Lcom/htc/calendar/AgendaActivity;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 101
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity$1;->this$0:Lcom/htc/calendar/AgendaActivity;

    #calls: Lcom/htc/calendar/AgendaActivity;->setHtcTitle()V
    invoke-static {v2}, Lcom/htc/calendar/AgendaActivity;->access$200(Lcom/htc/calendar/AgendaActivity;)V

    .line 102
    return-void
.end method
