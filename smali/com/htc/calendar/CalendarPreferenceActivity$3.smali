.class Lcom/htc/calendar/CalendarPreferenceActivity$3;
.super Landroid/os/Handler;
.source "CalendarPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity$3;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1209
    const/4 v0, 0x0

    .line 1210
    .local v0, count:I
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1211
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1213
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity$3;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    #calls: Lcom/htc/calendar/CalendarPreferenceActivity;->initWeather(I)V
    invoke-static {v1, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$300(Lcom/htc/calendar/CalendarPreferenceActivity;I)V

    .line 1215
    return-void
.end method
