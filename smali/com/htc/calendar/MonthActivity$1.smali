.class Lcom/htc/calendar/MonthActivity$1;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MonthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/MonthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity$1;->this$0:Lcom/htc/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity$1;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;
    invoke-static {v0}, Lcom/htc/calendar/MonthActivity;->access$000(Lcom/htc/calendar/MonthActivity;)Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$1;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/calendar/MonthActivity;->access$100(Lcom/htc/calendar/MonthActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity$1;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;
    invoke-static {v0}, Lcom/htc/calendar/MonthActivity;->access$000(Lcom/htc/calendar/MonthActivity;)Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 91
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity$1;->this$0:Lcom/htc/calendar/MonthActivity;

    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$1;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/htc/calendar/MonthActivity;->access$000(Lcom/htc/calendar/MonthActivity;)Landroid/text/format/Time;

    move-result-object v1

    #calls: Lcom/htc/calendar/MonthActivity;->setHtcTitle(Landroid/text/format/Time;)V
    invoke-static {v0, v1}, Lcom/htc/calendar/MonthActivity;->access$200(Lcom/htc/calendar/MonthActivity;Landroid/text/format/Time;)V

    .line 92
    return-void
.end method
