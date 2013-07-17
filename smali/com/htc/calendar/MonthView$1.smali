.class Lcom/htc/calendar/MonthView$1;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/MonthView;


# direct methods
.method constructor <init>(Lcom/htc/calendar/MonthView;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/htc/calendar/MonthView$1;->this$0:Lcom/htc/calendar/MonthView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 228
    iget-object v1, p0, Lcom/htc/calendar/MonthView$1;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/calendar/MonthView;->access$100(Lcom/htc/calendar/MonthView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/calendar/MonthView$1;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/htc/calendar/MonthView;->access$200(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/htc/calendar/MonthView$1;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mToday:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/htc/calendar/MonthView;->access$300(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/htc/calendar/MonthView$1;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mTempTime:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/htc/calendar/MonthView;->access$400(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/htc/calendar/MonthView$1;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/htc/calendar/MonthView;->access$500(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/htc/calendar/MonthView$1;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/htc/calendar/MonthView;->access$500(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 237
    iget-object v1, p0, Lcom/htc/calendar/MonthView$1;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/htc/calendar/MonthView;->access$600(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/htc/calendar/MonthView$1;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/htc/calendar/MonthView;->access$600(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 239
    return-void
.end method
