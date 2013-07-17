.class Lcom/htc/calendar/EditEvent$1;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/EditEvent;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;

.field final synthetic val$begin:J

.field final synthetic val$end:J

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/htc/calendar/EditEvent;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$1;->this$0:Lcom/htc/calendar/EditEvent;

    iput-wide p2, p0, Lcom/htc/calendar/EditEvent$1;->val$begin:J

    iput-wide p4, p0, Lcom/htc/calendar/EditEvent$1;->val$end:J

    iput p6, p0, Lcom/htc/calendar/EditEvent$1;->val$which:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 775
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$1;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;
    invoke-static {v0}, Lcom/htc/calendar/EditEvent;->access$1600(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/DeleteEventHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/calendar/EditEvent$1;->val$begin:J

    iget-wide v3, p0, Lcom/htc/calendar/EditEvent$1;->val$end:J

    iget-object v5, p0, Lcom/htc/calendar/EditEvent$1;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v5

    iget v6, p0, Lcom/htc/calendar/EditEvent$1;->val$which:I

    invoke-virtual/range {v0 .. v6}, Lcom/htc/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;I)V

    .line 780
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$1;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$1;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-static {v0}, Lcom/htc/calendar/EASMailUtils;->syncEASCalendar(Landroid/content/Context;)V

    .line 784
    :cond_0
    return-void
.end method
