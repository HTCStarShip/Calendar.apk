.class Lcom/htc/calendar/MonthActivity$3$1;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/MonthActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/calendar/MonthActivity$3;

.field final synthetic val$timeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/calendar/MonthActivity$3;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity$3$1;->this$1:Lcom/htc/calendar/MonthActivity$3;

    iput-object p2, p0, Lcom/htc/calendar/MonthActivity$3$1;->val$timeStr:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity$3$1;->this$1:Lcom/htc/calendar/MonthActivity$3;

    iget-object v0, v0, Lcom/htc/calendar/MonthActivity$3;->this$0:Lcom/htc/calendar/MonthActivity;

    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$3$1;->val$timeStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/calendar/HtcUtils;->setHtc_Title_21(Landroid/app/Activity;Ljava/lang/String;)V

    .line 540
    return-void
.end method
