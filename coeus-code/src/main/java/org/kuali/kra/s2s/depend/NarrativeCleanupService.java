package org.kuali.kra.s2s.depend;

import org.kuali.kra.proposaldevelopment.bo.Narrative;

import java.util.List;


public interface NarrativeCleanupService {

    /**
     * Given a collection of narratives, each narratives that was "auto-generated" will be deleted
     * from the proposal development system of record.
     *
     * @param narratives the collection of narratives.  Cannot be null.
     * @throws IllegalArgumentException if narratives collection is null
     */
    void deleteAutoGeneratedNarratives(List<Narrative> narratives);

    /**
     * Checks if a narrative is "auto-generated".
     * @param narrative the narrative.  Cannot be null.
     * @return true if the narrative is "auto-generated"
     * @throws IllegalArgumentException if narrative is null
     */
    boolean isAutoGeneratedNarrative(Narrative narrative);
}