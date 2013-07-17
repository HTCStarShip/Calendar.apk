.class Lcom/htc/calendar/CalendarView$DismissPopup;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DismissPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarView;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 4551
    iput-object p1, p0, Lcom/htc/calendar/CalendarView$DismissPopup;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4554
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$DismissPopup;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/htc/calendar/CalendarView;->access$2100(Lcom/htc/calendar/CalendarView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4555
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$DismissPopup;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/htc/calendar/CalendarView;->access$2100(Lcom/htc/calendar/CalendarView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4557
    :cond_0
    return-void
.end method
