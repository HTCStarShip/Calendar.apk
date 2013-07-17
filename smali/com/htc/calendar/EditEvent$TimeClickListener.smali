.class Lcom/htc/calendar/EditEvent$TimeClickListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeClickListener"
.end annotation


# instance fields
.field private mTime:Landroid/text/format/Time;

.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/EditEvent;Landroid/text/format/Time;)V
    .locals 0
    .parameter
    .parameter "time"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$TimeClickListener;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p2, p0, Lcom/htc/calendar/EditEvent$TimeClickListener;->mTime:Landroid/text/format/Time;

    .line 525
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$TimeClickListener;->this$0:Lcom/htc/calendar/EditEvent;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    .line 531
    .local v8, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 533
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$TimeClickListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/htc/calendar/EditEvent;->access$1000(Lcom/htc/calendar/EditEvent;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 534
    .local v7, allDay:Z
    const-string v0, "EditEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAllDay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/EditEvent$TimeClickListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mAllDay:Z
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1100(Lcom/htc/calendar/EditEvent;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " allDay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/EditEvent$TimeClickListener;->mTime:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    iget-object v1, p0, Lcom/htc/calendar/EditEvent$TimeClickListener;->this$0:Lcom/htc/calendar/EditEvent;

    new-instance v2, Lcom/htc/calendar/EditEvent$TimeListener;

    iget-object v3, p0, Lcom/htc/calendar/EditEvent$TimeClickListener;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct {v2, v3, p1}, Lcom/htc/calendar/EditEvent$TimeListener;-><init>(Lcom/htc/calendar/EditEvent;Landroid/view/View;)V

    iget-object v3, p0, Lcom/htc/calendar/EditEvent$TimeClickListener;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->hour:I

    iget-object v4, p0, Lcom/htc/calendar/EditEvent$TimeClickListener;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->minute:I

    iget-object v5, p0, Lcom/htc/calendar/EditEvent$TimeClickListener;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZZ)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    .line 546
    return-void
.end method
