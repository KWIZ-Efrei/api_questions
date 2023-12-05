package com.gclefrei.apiquestions.dtos;

import java.util.List;
import java.util.UUID;

public class ListOfQuestionIds {
    List<UUID> ids;

    public List<UUID> getIds() {
        return ids;
    }

    public void setIds(List<UUID> ids) {
        this.ids = ids;
    }
}
