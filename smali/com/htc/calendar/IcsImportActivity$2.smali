.class Lcom/htc/calendar/IcsImportActivity$2;
.super Ljava/lang/Object;
.source "IcsImportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/IcsImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mChoosePos:I

.field final synthetic this$0:Lcom/htc/calendar/IcsImportActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/IcsImportActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/calendar/IcsImportActivity$2;->this$0:Lcom/htc/calendar/IcsImportActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/IcsImportActivity$2;->mChoosePos:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/htc/calendar/IcsImportActivity$2;->this$0:Lcom/htc/calendar/IcsImportActivity;

    iget v3, p0, Lcom/htc/calendar/IcsImportActivity$2;->mChoosePos:I

    #calls: Lcom/htc/calendar/IcsImportActivity;->findCalendarIdByPosition(I)J
    invoke-static {v2, v3}, Lcom/htc/calendar/IcsImportActivity;->access$000(Lcom/htc/calendar/IcsImportActivity;I)J

    move-result-wide v0

    .line 72
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/calendar/IcsImportActivity$2;->this$0:Lcom/htc/calendar/IcsImportActivity;

    #calls: Lcom/htc/calendar/IcsImportActivity;->importCalendar(J)V
    invoke-static {v2, v0, v1}, Lcom/htc/calendar/IcsImportActivity;->access$100(Lcom/htc/calendar/IcsImportActivity;J)V

    .line 73
    iget-object v2, p0, Lcom/htc/calendar/IcsImportActivity$2;->this$0:Lcom/htc/calendar/IcsImportActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/IcsImportActivity;->finish()V

    .line 80
    .end local v0           #id:J
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v2, -0x2

    if-ne p2, v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/htc/calendar/IcsImportActivity$2;->this$0:Lcom/htc/calendar/IcsImportActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/IcsImportActivity;->finish()V

    goto :goto_0

    .line 77
    :cond_1
    const-string v2, "IcsImportActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Click item position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput p2, p0, Lcom/htc/calendar/IcsImportActivity$2;->mChoosePos:I

    goto :goto_0
.end method
