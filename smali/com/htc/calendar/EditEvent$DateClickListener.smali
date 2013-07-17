.class Lcom/htc/calendar/EditEvent$DateClickListener;
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
    name = "DateClickListener"
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
    .line 623
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$DateClickListener;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput-object p2, p0, Lcom/htc/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    .line 625
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$DateClickListener;->this$0:Lcom/htc/calendar/EditEvent;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    .line 631
    .local v9, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 634
    new-instance v0, Lcom/htc/widget/HtcDatePickerDialog;

    iget-object v1, p0, Lcom/htc/calendar/EditEvent$DateClickListener;->this$0:Lcom/htc/calendar/EditEvent;

    new-instance v2, Lcom/htc/calendar/EditEvent$DateListener;

    iget-object v3, p0, Lcom/htc/calendar/EditEvent$DateClickListener;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct {v2, v3, p1}, Lcom/htc/calendar/EditEvent$DateListener;-><init>(Lcom/htc/calendar/EditEvent;Landroid/view/View;)V

    const/16 v3, 0x7d0

    const/16 v4, 0x7ee

    iget-object v5, p0, Lcom/htc/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    iget-object v6, p0, Lcom/htc/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->month:I

    iget-object v7, p0, Lcom/htc/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->monthDay:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePickerDialog;->show()V

    .line 638
    return-void
.end method
