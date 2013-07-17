.class Lcom/htc/calendar/AttendeesAdapter$1;
.super Ljava/lang/Object;
.source "AttendeesAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/AttendeesAdapter;->changeCursor(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AttendeesAdapter;

.field final synthetic val$tmp_cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/calendar/AttendeesAdapter;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/htc/calendar/AttendeesAdapter$1;->this$0:Lcom/htc/calendar/AttendeesAdapter;

    iput-object p2, p0, Lcom/htc/calendar/AttendeesAdapter$1;->val$tmp_cursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/calendar/AttendeesAdapter$1;->val$tmp_cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/htc/calendar/AttendeesAdapter$1;->val$tmp_cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_0
    return-void
.end method
