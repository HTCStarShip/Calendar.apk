.class Lcom/htc/calendar/CalendarActivity$1;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/calendar/CalendarActivity$1;->this$0:Lcom/htc/calendar/CalendarActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity$1;->this$0:Lcom/htc/calendar/CalendarActivity;

    iget-object v0, v0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity$1;->this$0:Lcom/htc/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity$1;->this$0:Lcom/htc/calendar/CalendarActivity;

    iget-object v0, v0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 79
    return-void
.end method
