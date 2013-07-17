.class Lcom/htc/calendar/DeleteEventHelper$2;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/DeleteEventHelper;

.field final synthetic val$begin:J

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$end:J

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/htc/calendar/DeleteEventHelper;JJLandroid/database/Cursor;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/htc/calendar/DeleteEventHelper$2;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    iput-wide p2, p0, Lcom/htc/calendar/DeleteEventHelper$2;->val$begin:J

    iput-wide p4, p0, Lcom/htc/calendar/DeleteEventHelper$2;->val$end:J

    iput-object p6, p0, Lcom/htc/calendar/DeleteEventHelper$2;->val$cursor:Landroid/database/Cursor;

    iput p7, p0, Lcom/htc/calendar/DeleteEventHelper$2;->val$which:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper$2;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/htc/calendar/DeleteEventHelper$2;->val$begin:J

    iget-wide v3, p0, Lcom/htc/calendar/DeleteEventHelper$2;->val$end:J

    iget-object v5, p0, Lcom/htc/calendar/DeleteEventHelper$2;->val$cursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/htc/calendar/DeleteEventHelper$2;->val$which:I

    #calls: Lcom/htc/calendar/DeleteEventHelper;->doDelete(JJLandroid/database/Cursor;I)V
    invoke-static/range {v0 .. v6}, Lcom/htc/calendar/DeleteEventHelper;->access$900(Lcom/htc/calendar/DeleteEventHelper;JJLandroid/database/Cursor;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v7

    .line 477
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "DeleteEventHelper"

    const-string v1, "delete exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
