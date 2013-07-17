.class Lcom/htc/calendar/CalendarSearchActivity$3;
.super Ljava/lang/Object;
.source "CalendarSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/CalendarSearchActivity;->dirtyCloseCursor(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarSearchActivity;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarSearchActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/htc/calendar/CalendarSearchActivity$3;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    iput-object p2, p0, Lcom/htc/calendar/CalendarSearchActivity$3;->val$cursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity$3;->val$cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity$3;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity$3;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_0
    return-void
.end method
