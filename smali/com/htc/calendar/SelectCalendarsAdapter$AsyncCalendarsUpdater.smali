.class Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;
.super Landroid/content/AsyncQueryHandler;
.source "SelectCalendarsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/SelectCalendarsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCalendarsUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/SelectCalendarsAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/SelectCalendarsAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;->this$0:Lcom/htc/calendar/SelectCalendarsAdapter;

    .line 129
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 134
    if-nez p3, :cond_1

    .line 171
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 138
    .restart local p2
    :cond_1
    invoke-static {}, Lcom/htc/calendar/SelectCalendarsAdapter;->access$100()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 140
    .local v0, currentCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 141
    invoke-static {v0, p3}, Lcom/htc/calendar/Utils;->compareCursors(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {p3}, Lcom/htc/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 150
    .local v2, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 151
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_3
    invoke-static {}, Lcom/htc/calendar/SelectCalendarsAdapter;->access$200()Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v2, v4}, Lcom/htc/calendar/Utils;->checkForDuplicateNames(Ljava/util/Map;Landroid/database/Cursor;I)V

    .line 156
    invoke-static {}, Lcom/htc/calendar/SelectCalendarsAdapter;->access$100()Ljava/util/Map;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :try_start_0
    iget-object v3, p0, Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;->this$0:Lcom/htc/calendar/SelectCalendarsAdapter;

    invoke-virtual {v3, p1, v2}, Lcom/htc/calendar/SelectCalendarsAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 159
    iget-object v3, p0, Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;->this$0:Lcom/htc/calendar/SelectCalendarsAdapter;

    #getter for: Lcom/htc/calendar/SelectCalendarsAdapter;->mActivity:Lcom/htc/calendar/SelectCalendarsActivity;
    invoke-static {v3}, Lcom/htc/calendar/SelectCalendarsAdapter;->access$300(Lcom/htc/calendar/SelectCalendarsAdapter;)Lcom/htc/calendar/SelectCalendarsActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/calendar/SelectCalendarsActivity;->startManagingCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    if-eqz v0, :cond_0

    .line 166
    iget-object v3, p0, Lcom/htc/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;->this$0:Lcom/htc/calendar/SelectCalendarsAdapter;

    #getter for: Lcom/htc/calendar/SelectCalendarsAdapter;->mActivity:Lcom/htc/calendar/SelectCalendarsActivity;
    invoke-static {v3}, Lcom/htc/calendar/SelectCalendarsAdapter;->access$300(Lcom/htc/calendar/SelectCalendarsAdapter;)Lcom/htc/calendar/SelectCalendarsActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/calendar/SelectCalendarsActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 167
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "Calendar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adapter expired, try again on the next query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
